;;;; Common traverser functions for pretty printing and other tasks.

(in-package :cgen)

;;; Set the indent sign for the pretty print.
(defparameter *indent* #\tab)
(defun set-indent-sign (x)
  (setf *indent* x))

;;; This is the common core of all traversal functions for the cgen-ast.
(defgeneric traverser (traverser node level))

;;; Simply start the traversal for all subnodes.
(defmethod traverser ((travers t) (item node) level)
  (with-slots (subnodes) item
    (loop for i in subnodes do
	 (let ((subnode (slot-value item i)))
	   (if subnode
	       (traverser travers subnode (+ 1 level)))))))

;;; For nodelists this method ist used to start the traversal
;;; for the subnodes in the lsit.
(defmethod traverser ((travers t) (item nodelist) level)
  (with-slots (nodes) item
    (mapcar #'(lambda (x) (traverser travers x level)) nodes)))

(defmethod traverser ((travers t) (item t) level))

;;; Inserts a single proxy-node in the AST.
(defmacro make-proxy (slot node-type)
  "Add proxy nodes to slot"
  (let ((val (gensym)))
    `(if (or (eql (find-class 'nodelist) (class-of (slot-value item ',slot))))
  	 (let ((,val (slot-value (slot-value item ',slot) 'nodes)))
  	   (setf (slot-value (slot-value item ',slot) 'nodes)
  		 (loop for i in ,val collect
  		      (make-instance ,node-type
  				     :proxy-subnode i
  				     :values '()
  				     :subnodes '(proxy-subnode)))))
  	 (let ((,val (slot-value item ',slot)))
  	   (if ,val
  	       (setf (slot-value item ',slot)
  		     (make-instance ,node-type
  				    :proxy-subnode ,val
  				    :values '()
  				    :subnodes '(proxy-subnode)))
  	       (setf (slot-value item ',slot)
  	       	     (make-instance ,node-type
  	       			    :proxy-subnode nil
  	       			    :values '()
  	       			    :subnodes '(proxy-subnode))))))))

;;; Deletes a single proxy-node in the AST.
(defmacro del-proxy (slot)
  "Remove proxy-node in slot"
  (let ((val (gensym)) (node-list (gensym)))
    `(let ((,val (slot-value item ',slot)))
       (if (eql (find-class 'nodelist) (class-of (slot-value item ',slot)))
  	   (let ((,node-list (slot-value (slot-value item ',slot) 'nodes)))
 	     (setf (slot-value (slot-value item ',slot) 'nodes)
  		   (loop for i in ,node-list collect
  			(slot-value i 'proxy-subnode))))
  	   (if ,val (setf (slot-value item ',slot)
  			  (slot-value ,val 'proxy-subnode)))))))

;;; Defines proxy nodes for local usage.
;;; These nodes can be used with 'add-proxy', 'del-proxy',
;;; 'defproxyprint', and 'defproxymetod'.
;;; Use proxy nodes directly and without quotation.
(defmacro with-proxynodes (proxy-nodes &body body)
  "define proxy nodes for local usage"
  (if (not (listp proxy-nodes))
      (setf proxy-nodes (list proxy-nodes)))
  (if proxy-nodes
      (let ((tmp (gensym (format nil "proxy-~a-" (first proxy-nodes)))))
	(setf (gethash (first proxy-nodes) *proxy-node*) tmp)
	;;for debug/swank, sonst auskommentieren
	(eval `(defnode ,tmp (proxy) ()))
	;;
	`(let ((,(first proxy-nodes) ',tmp))
	     (defnode ,tmp (proxy) ())
	     (with-proxynodes ,(rest proxy-nodes) ,@body)))
      `(progn ,@body)))

;;; Local proxy nodes can only be used for method definition 
;;; with this workaround. Direct usage in 'defmethod' will not work.
(defmacro %defproxymethod (qualifier class proxy-node &body body)
  (if (eql :self qualifier)
      `(progn 
	 (setf (gethash (find-class ',(gethash proxy-node *proxy-node*))
			*ignore-node*) t)
	 (defmethod traverser
	     (,class
	      (item ,(gethash proxy-node *proxy-node*)) level)
	   (with-slots (values subnodes) item ,@body)
	   (call-next-method)))
      `(defmethod traverser ,qualifier 
	 (,class
	  (item ,(gethash proxy-node *proxy-node*)) level) 
	 (with-slots (values subnodes) item ,@body))))


(defmacro defproxyprint (qualifier node &body body)
  "define a pretty-print method for a proxy node"
  `(%defproxymethod ,qualifier (pp pretty-printer) ,node ,@body))

(defmacro defproxymethod (qualifier class proxy-node &body body)
  "define a method for a proxy node"
  `(%defproxymethod ,qualifier ,class ,proxy-node ,@body))

;;; Extension for the traverser for pretty printing
(defclass pretty-printer ()
  ((indent :initform 0)
   (sign-stack :initform nil)
   (info-stack :initform nil)
   (stream :initform t :initarg :stream)))

(defgeneric get-indent-generic (pretty-printer))
(defgeneric inc-indent-generic (pretty-printer))
(defgeneric dec-indent-generic (pretty-printer))
(defgeneric get-stream-generic (pretty-printer))
(defgeneric set-stream-generic (pretty-printer))
(defgeneric push-sign-generic (pretty-printer sign))
(defgeneric top-sign-generic (pretty-printer))
(defgeneric pop-sign-generic (pretty-printer))
(defgeneric push-info-generic (pretty-printer info))
(defgeneric top-info-generic (pretty-printer))
(defgeneric pop-info-generic (pretty-printer))

(defmacro defpretty-helper (name class args slots &body body)
  (if args
      `(defmethod ,name ((item ,class) .,args )
	 (with-slots ,slots item
	   .,body))
      `(defmethod ,name ((item ,class))
	 (with-slots ,slots item
	   .,body))))

(defpretty-helper get-indent-generic pretty-printer nil (pre-indent indent)
  "return witespace string"
  (let ((x nil))
    (loop for i from 1 to indent do
	 (push *indent*  x))
    (coerce x 'string)))

(defpretty-helper inc-indent-generic pretty-printer nil (indent)
  "incement pretty-printer indent"
  (incf indent))

(defpretty-helper dec-indent-generic pretty-printer nil (indent)
  "decrement pretty-printer indent"
  (decf indent))

(defpretty-helper get-stream-generic pretty-printer nil (stream)
  "get stream direction"
  stream)

(defpretty-helper push-sign-generic pretty-printer (sign) (sign-stack)
  "put signs on stack"
  (push sign sign-stack
	))

(defpretty-helper pop-sign-generic pretty-printer nil (sign-stack)
  "delete (pop) sign from sign-stack"
  (pop sign-stack))

(defpretty-helper top-sign-generic pretty-printer nil (sign-stack)
  "get sign form sign-stack"
  (let ((ret (first sign-stack)))
    (if ret ret "")))

(defpretty-helper push-info-generic pretty-printer (info) (info-stack)
  "add info to info-stack"
  (push info info-stack))

(defpretty-helper pop-info-generic pretty-printer nil (info-stack)
  "remove top ifno from info-stack"
  (pop info-stack))

(defpretty-helper top-info-generic pretty-printer nil (info-stack)
  "get top info from info-stack"
  (first info-stack))

;;; A definition macro used for the pretty printer.
;;; Adds the ":self" qualifier (besides :before :after) to override
;;; the standard node printing method (which simply prints all values).
(defmacro defprettymethod (qualifier node &body body)
  (if (eql :self qualifier)
      `(progn (setf (gethash (find-class ',node) *ignore-node*) t)
	      (defmethod traverser
		  ((pp pretty-printer) 
		   (item ,node) level)
		(with-slots (values subnodes) item .,body)
		(call-next-method)))
      `(defmethod traverser ,qualifier 
	 ((pp pretty-printer) 
	  (item ,node) level) 
	 (with-slots (values subnodes) item .,body))))


;;; Attempt to reduce the write overhead.
(defmacro with-pp (&body body)
  `(symbol-macrolet ((stream (get-stream-generic pp))
		     (indent (get-indent-generic pp))
		     (--indent (dec-indent-generic pp))
		     (++indent (inc-indent-generic pp)))
     (macrolet ((push-sign (x) `(push-sign-generic pp ,x))
		(pop-sign () `(pop-sign-generic pp))
		(top-sign () `(top-sign-generic pp))
		(push-info (x) `(push-info-generic pp ,x))
		(pop-info () `(pop-info-generic pp))
		(top-info () `(top-info-generic pp)))
       ,@body)))


;;; A traverser which checks the identifier for c-conformity
;;; and automatically solves naming problems.
(defclass renamer ()
  ((used-names :initform (make-hash-table))
   (name-map :initform (make-hash-table))))
(defgeneric check-and-get-name (renamer check-name))


;;; Check if identifier is OK.
;;; Store in hash table and correct if necessary.
(defmethod check-and-get-name ((item renamer) check-name)
  (with-slots (used-names name-map) item
    (let ((alr-checked (gethash check-name name-map)))
      (if alr-checked
	  alr-checked
	  (labels ((check-char (x) (alpha-char-p x))
		   (check-underscore (x) (eql #\_ x))
		   (check-asterisk (x) (eql #\* x))
		   (check-num (x)
		     (numberp
		      (parse-integer
		       (concatenate 'string
				    (list x))
				    :junk-allowed t)))
		   (check-all (x)
		     (or
		      (check-char x)
		      (check-underscore x)
		      (check-asterisk x)
		      (check-num x)))
		 (check-nall (x)
		   (not (check-all x))))
	    (let* ((orig check-name)
		   (changed (substitute-if #\_ #'check-nall (symbol-name check-name)))
		   (changed-l (concatenate 'list changed)))
	      (if (check-num (first changed-l))
		  (progn 
		    (setf (first changed-l) #\_)
		    (setf changed (concatenate 'string changed-l))))
	      (loop while (gethash (intern changed) used-names) do
		   (setf changed (format nil "_~a" changed)))
	      (setf changed (intern changed))
	      (setf (gethash orig name-map) changed)
	      (setf (gethash changed used-names) t)
	      changed))))))

;;; Traverses the tree but checks only the identifier nodes.
(defmethod traverser ((rn renamer) (item identifier) level)
  (with-slots (identifier) item
    (setf identifier (check-and-get-name rn (intern (symbol-name identifier) :cgen)))))

;;; This Traverser checks whether brackets are necessary.
(defclass decl-blocker ()
  ((names :initform `(,(make-hash-table)))
   (delta-names :initform '(nil))
   (in-decl :initform '(nil))
   (in-decl-item :initform '(nil))
   (make-block :initform '(nil))))

(defmethod traverser ((db decl-blocker) (item identifier) level)
  "find names, check if in decl-item, save infos on stack in decl-blocker"
  (with-slots (identifier) item
    (with-slots (names delta-names in-decl-item make-block) db
      (if (first in-decl-item)
	  (if (gethash identifier (first names))
	      (setf (first make-block) t)
	      (progn (push identifier (first delta-names))
		     (setf (gethash identifier (first names)) t)))))))

(with-proxynodes (proxy)
  "find declaration-item identifier"
  
  (defproxymethod :before (db decl-blocker) proxy
    "push 'true' on in-decl stack in decl-blocker"
    (with-slots (in-decl in-decl-item) db
      (if (first in-decl)
	  (setf (first in-decl-item) t))))

  (defproxymethod :after (db decl-blocker) proxy
    "pop last item on in-decl stack of decl-blocker"
    (with-slots (in-decl in-decl-item) db
      (if (first in-decl)
	  (setf (first in-decl-item) nil))))
  
  (defmethod traverser :before ((db decl-blocker) (item declaration-item) level)
    "prepare decl-blocker-proxy to identify names"
    (with-slots (identifier) item
      (make-proxy identifier proxy)))
  
  (defmethod traverser :after ((db decl-blocker) (item declaration-item) level)
    "remove decl-blocker-proxy"
    (with-slots (identifier) item
      (del-proxy identifier)))
)

(with-proxynodes (proxy)
  "find genuine identifier in array reference"
  
  (defproxymethod :before (db decl-blocker) proxy 
    "array[indizes] -> both are 'name', set 'false' for indizes on stack"
    (with-slots (in-decl in-decl-item) db
      (if (first in-decl)
	  (push nil in-decl-item))))

  (defproxymethod :after (db decl-blocker) proxy
    "pop last item on in-decl stack of decl-blocker"
    (with-slots (in-decl in-decl-item) db
      (if (first in-decl)
	  (pop in-decl-item))))

  (defmethod traverser :before ((db decl-blocker) (item array-reference) level)
    "add proxy do distinct array from indizes"
    (with-slots (indizes) item
      (make-proxy indizes proxy)))

  (defmethod traverser :after ((db decl-blocker) (item array-reference) level)
    "remove proxy..."
    (with-slots (indizes) item
      (del-proxy indizes)))
)

(defmethod traverser :before ((db decl-blocker) (item declaration-list) level)
  "prepare empty lists and a nil-value for further traversing"
  (with-slots (delta-names make-block in-decl in-decl-item) db
    (push nil delta-names)
    (push nil make-block)
    (push t in-decl)
    (push nil in-decl-item)))

(defmethod traverser :after ((db decl-blocker) (item declaration-list) level)
  "check values in decl-blocker and set brackets to 'true' or 'nil'"
  (with-slots (names delta-names make-block in-decl in-decl-item) db
    (if (first make-block)
	(progn
	  (setf (slot-value item 'brackets) t)
	  (loop for i in (first delta-names) do
	       (setf (gethash i (first names)) nil)))
	(if (> (list-length delta-names) 1)
	    (loop for i in (first  delta-names) do
		 (push i (second delta-names)))))
    (pop delta-names)
    (pop make-block)
    (pop in-decl)
    (pop in-decl-item)))

(defmacro prepare-blocker-stacks (node-class)
  "create method which prepares decl-blocker stacks"
  `(defmethod traverser :before ((db decl-blocker) (item ,node-class) level)
     "prepare empty decl-blocker stacks and values"
     (with-slots (names) db
       (push (make-hash-table) names))))

(defmacro clean-blocker-stacks (node-class)
  "creates method which cleans decl-blocker stacks"
  `(defmethod traverser :after ((db decl-blocker) (item ,node-class) level)
     "clean up decl-blocker stack and values"
     (with-slots (names) db
       (pop names))))

(defmacro decl-blocker-extra-nodes (&rest nodes)
  `(progn .,(loop for i in nodes collect
	      `(progn (eval (prepare-blocker-stacks ,i))
	      	      (eval (clean-blocker-stacks ,i))))))

(decl-blocker-extra-nodes function-definition struct-definition for-statement)

;;; This traverser hides "{}" in ifs where possible
(defclass if-blocker ()
  ((parent-node :initform '())
   (statement-count :initform '(0))
   (first-statement :initform '(nil))
   (self-else :initform '(nil))
   (child-else :initform '(nil))
   (force-brackets :initform '(nil))))

(with-proxynodes (if-proxy else-proxy)
  "use proxy nodes for if and else body in if-statements"

  (defmethod traverser :before ((ib if-blocker) (item if-statement) level)
    "add proxy-node to if- and else-body; add stack infos; check nested-if"
    (with-slots (if-body else-body) item
      (with-slots (self-else child-else) ib
	(if else-body
	    (progn
	      (make-proxy else-body else-proxy)
	      (push t self-else)
	      (setf (first child-else) t))
	    (progn
	      (push nil self-else)
	      (setf (first child-else) nil)))
	(push 'unknown child-else) ;;handled like t, better debug-output
  	(make-proxy if-body if-proxy))))
  
  (defmethod traverser :after ((ib if-blocker) (item if-statement) level)
    "clean up proxy-nodes and stack"
    (with-slots (if-body else-body) item
      (with-slots (self-else child-else) ib
  	(del-proxy if-body)
	(if else-body
	    (del-proxy else-body))
	(pop child-else)
	(pop self-else))))
  
  (defproxymethod :before (ib if-blocker) if-proxy
    "push 'if-body info on stack"
		  (with-slots (parent-node) ib
      (push 'if-body parent-node)))
  
  (defproxymethod :after (ib if-blocker) if-proxy
    "pop stack"
    (with-slots (parent-node) ib
      (pop parent-node)))
  
  (defproxymethod :before (ib if-blocker) else-proxy
    "push 'else-body info on stack"
    (with-slots (parent-node) ib
      (push 'else-body parent-node)))
  
  (defproxymethod :after (ib if-blocker) else-proxy
    "pop stack"
    (with-slots (parent-node) ib
      (pop parent-node)))
)

(defmethod traverser :before ((ib if-blocker) (item compound-statement) level)
  "prepare stacks, count statements"
  (with-slots (parent-node statement-count first-statement force-brackets) ib
    (with-slots (statement-list) item
      (push t first-statement)
      (push 'compound-statement parent-node)
      (push nil force-brackets)
      (push 0 statement-count))))

(defmethod traverser :after ((ib if-blocker) (item compound-statement) level)
  "decide wheter to print brackets or not"
  (with-slots (parent-node statement-count first-statement self-else child-else force-brackets) ib
    (with-slots (statement-list brackets) item
      (pop parent-node)
      (cond ((eql (first parent-node) 'if-body)
	     (cond ((and (< (first statement-count) 2)
			 (not (first self-else)))
		    (setf brackets nil))
		   ((and (< (first statement-count) 2)
			 (first self-else)
			 (first child-else))
		    (setf brackets nil))))
	    ((eql (first parent-node) 'else-body)
	     (if (< (first statement-count) 2)
		 (setf brackets nil))))
      (if (first force-brackets)
	  (setf brackets t))
      (pop statement-count)
      (pop first-statement)
      (pop force-brackets))))

(defmethod traverser :before ((ib if-blocker) (item declaration-list) level)
  "set force-brackets (to t) if declartion-list found"
  (with-slots (force-brackets) ib
    (if force-brackets
	(setf (first force-brackets) t))))

(defmethod traverser :before ((ib if-blocker) (item nodelist) level)
  "check nodelists, which belong to a compound-statement"
  (with-slots (statement-count first-statement) ib
    (with-slots (nodes) item
      (if (first first-statement)
	  (let ((count (length nodes)))
	    (setf (first first-statement) nil)
	    (if (< (first statement-count) count)
		(setf (first statement-count) count)))))))

;;; This traveser removes ambiguous nested compound-statements"
;;; to reduce indentation.
(defclass else-if-traverser ()())
(with-proxynodes (else-if-proxy)
  "use proxy nodes for else-if occurences"
  
  (defmethod traverser :before ((eit else-if-traverser) (item if-statement) level)
    "add else-if-proxy to else-body"
    (with-slots (else-body) item
      (if else-body
	  (make-proxy else-body else-if-proxy))))

  (defmethod traverser :after ((eit else-if-traverser) (item if-statement) level)
    "clean up proxy nodes (else-if-proxy"
    (with-slots (else-body) item
      (if else-body
	  (del-proxy else-body))))

  (defproxymethod :before (eit else-if-traverser) else-if-proxy
    "check if only one single if-statement is present in else-body and remove compound-statement node"
    (with-slots (proxy-subnode) item
      (let ((nodes (slot-value (slot-value proxy-subnode 'statement-list) 'nodes)))
	(if (= (length nodes) 1)
	    (if (eql (class-of (first nodes)) (find-class 'source-position))
		(if (eql (class-of (slot-value (first nodes) 'subnode)) (find-class 'if-statement))
		    (setf proxy-subnode (first nodes)))))))))

;;; This traverser removes ambiguous nested nodelists.
(defclass nodelist-traverser ()())
(defmethod traverser :before ((nt nodelist-traverser) (item nodelist) level)
  "remove unecessary nodelists, needed for correct if-block brackets"
  (with-slots (nodes) item
    (loop do
	 (if (not (= (length nodes) 1))
	     (loop-finish)
	     (cond ((eql (class-of (first nodes)) (find-class 'nodelist))
		    (setf nodes (slot-value nodes 'nodes)))
		   ((eql (class-of (first nodes)) (find-class 'source-position))
		    (if (eql (class-of (slot-value (first nodes) 'subnode)) (find-class 'nodelist))
			(setf nodes (slot-value (slot-value (first nodes) 'subnode) 'nodes))
			(loop-finish)))
		   (t (loop-finish)))))))

;;; Debug traverser
;;; Simply print all node types while traversing the tree.
(defclass debug-traverser ()())
(defmethod traverser :before ((debug debug-traverser) (item t) level)
  (format t "~&~a~a~%" 
	  (eval `(concatenate 'string ,@(loop for i from 0 to level collect " ")))
	  (class-name (class-of item))))

(defclass copy-traverser ()
  ((stack :initform '())
   (result :initform nil)))

(defmethod traverser :before ((copy copy-traverser) (item node) level)
  (with-slots (stack) copy
    (push '() stack)))

(defmethod traverser :after ((copy copy-traverser) (item node) level)
  (with-slots (stack result) copy
    (with-slots (values subnodes) item
      (let ((node-type (class-of item)))
	(let ((node-copy nil)
	      (subnodes subnodes) ; changes can occur
	      (subnode-copies (reverse (pop stack))))
	  (if (eq node-type (find-class 'nodelist))
	      (setf node-copy (make-instance 'nodelist
					     :nodes subnode-copies
					     :values '()
					     :subnodes '(nodes)))
	      (progn
		(setf node-copy (allocate-instance node-type))
		(dolist (slot (mapcar #'sb-pcl::slot-definition-name (sb-pcl::class-slots node-type)))
		  (when (slot-boundp item slot)
		    (when (eq (slot-value item slot) nil)
		      (setf subnodes (remove slot subnodes))) 
		    (let ((position (position slot subnodes)))
		      (setf (slot-value node-copy slot)
			    (if position
				(nth position subnode-copies)
				(slot-value item slot))))))))
	  (if (eq level 0)
	      (setf result node-copy)
	      (push node-copy (first stack))))))))
	  
