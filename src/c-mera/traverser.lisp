;;;; Common traverser functions for pretty printing and other tasks.

(in-package :c-mera)

;;; This is the common core of all traversal functions for the c-mera-ast.
(defgeneric traverser (traverser node level))

(defparameter *indent* #\tab)
(defun set-indent-char (x)
  (setf *indent* x))

;;; Simply start the traversal for all subnodes.
(defmethod traverser ((travers t) (item node) level)
  (with-slots (subnodes) item
    (loop for i in subnodes do
	 (let ((subnode (slot-value item i)))
	   (if subnode
	       (traverser travers subnode (+ 1 level)))))))

;;; For nodelists this method ist used to start the traversal
;;; for subnodes in lists.
(defmethod traverser ((travers t) (item nodelist) level)
  (with-slots (nodes) item
    (mapcar #'(lambda (x) (traverser travers x level)) nodes)))

(defmethod traverser ((travers t) (item t) level)
  (declare (ignore level)))

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

;;; Deletes a single proxy-node from the AST.
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
      (let ((tmp (gensym (format nil "~:@(proxy-~a-~)" (first proxy-nodes)))))
	;(format t "Symbol:: ~s" tmp)
	(setf (gethash (first proxy-nodes) *proxy-node*) tmp)
	;;for debug/swank, else comment out
	;;(eval `(defnode ,tmp (proxy) ()))
	;;
	`(let ((,(first proxy-nodes) ',tmp))

	     ;(defnode ,tmp (proxy) ())
	     (defproxy ,tmp)
	   
	     (with-proxynodes ,(rest proxy-nodes) ,@body)))
      `(progn ,@body)))

;;; Local proxy nodes can only be used for method definition 
;;; with this workaround. Direct usage in 'defmethod' will not work.
(defmacro defproxymethod (qualifier class proxy-node &body body)
  "define a method for a proxy node"
  (if (eql :self qualifier)
      `(progn 
	 (setf (gethash (find-class ',(gethash proxy-node *proxy-node*))
			*ignore-node*) t)
	 (defmethod traverser
	     (,class
	      (item ,(gethash proxy-node *proxy-node*)) level)
	   (declare (ignorable level))
	   (with-slots (values subnodes) item ,@body)
	   (call-next-method)))
      `(defmethod traverser ,qualifier
	 (,class
	  (item ,(gethash proxy-node *proxy-node*)) level)
	 (declare (ignorable level))
	 (with-slots (values subnodes) item ,@body))))


(defmacro defproxyprint (qualifier node &body body)
  "define a pretty-print method for a proxy node"
  `(defproxymethod ,qualifier (pp pretty-printer) ,node ,@body))

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

(defpretty-helper info-size-generic pretty-printer nil (info-stack)
  "get number of items in stack"
  (length info-stack))

;;; A definition macro used for the pretty printer.
;;; Adds the ":self" qualifier (besides :before :after) to override
;;; the standard node printing method (which simply prints all values).
(defmacro defprettymethod (qualifier node &body body)
  (if (eql :self qualifier)
      `(progn (setf (gethash (find-class ',node) *ignore-node*) t)
	      (defmethod traverser
		  ((pp pretty-printer) 
		   (item ,node) level)
		(declare (ignorable level))
		(with-slots (values subnodes) item .,body)
		(call-next-method)))
      `(defmethod traverser ,qualifier 
	 ((pp pretty-printer) 
	  (item ,node) level)
	 (declare (ignorable level))
	 (with-slots (values subnodes) item .,body))))

;;; Remove method
(defmacro delprettymethod (qualifier node)
  (let ((quali (if (eql qualifier :self)
		       '()
		       `(,qualifier))))
    `(remove-method #'traverser
		    (find-method #'traverser
				 ',quali
				 (list
				  ,(find-class 'pretty-printer)
				  (find-class ',node)
				  ,(find-class t))))))
				     


;;; Attempt to reduce write overhead.
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
		(top-info () `(top-info-generic pp))
		(info-size () `(info-size-generic pp))
		(node-slot (x) `(slot-value item ',x)))
       ,@body)))


;;; This traverser removes ambiguous nested nodelists.
(defclass nodelist-traverser ()())
(defmethod traverser :before ((nt nodelist-traverser) (item nodelist) level)
  "remove unecessary nodelists, needed for correct if-block brackets"
  (declare (ignore level))
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
  (declare (ignore level))
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
		(dolist (slot
			 #+sbcl (mapcar #'sb-pcl::slot-definition-name (sb-pcl::class-slots node-type))
			 #+clozure (mapcar #'ccl::slot-definition-name (ccl::class-slots node-type))
			 #+ecl (mapcar #'slot-definition-name (class-slots node-type))
			 #-(or sbcl clozure ecl)
			 (error "Copy traverser not implemented yet for your lisp implementaiton.")
			 )
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
	  
