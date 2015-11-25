;;;; Utilities used for AST creation and usage.

(in-package :cgen)


;;; Definition of all global hash tables.
(defmacro defglobalhashes (&body hashes)
  `(progn
     ,@(loop for i in hashes collect
	    `(defparameter ,i (make-hash-table)))))

(defglobalhashes *type*                 ; known c types
		 *qualifier*            ; known c qualifiers (and specifiers)
		 *handler*              ; all node handlers are stored here
		 *handler-key*          ; maps c-keywords to hanler-names
		 *node*                 ; known c-nodes (identify classes)
		 *ignore-node*          ; nodes ignored by pretty-print
		 *proxy-node*           ; stores proxy-nodes for macro-workaround
		 *special-node*         ; nodes with manually defined handler: (defnodehandler ...)
		 *node-macro-list*      ; contains standard handler-macros (if not special-node)
		 *function*)            ; known c-functions


;;; Used to switch lisp/cgen context
;;; Prepared Macrolet definitions are stored here.
(defparameter *with-lisp-declaration* nil)
(defparameter *with-cgen-declaration* nil)

(defparameter *current-file* '())   ; Stack of files in process
(defparameter *chars-per-line* '()) ; Stack of Stream to Line mapping

;;; Contains mapping of S-Expr to line and file informations.
(defparameter *line-hash* (make-hash-table :test 'equal))
(defparameter *file-hash* (make-hash-table :test 'equal))


;;; Add qualifiers (and c specifiers) for additional plugins
;;; (like CXX CUDA ...). 
(defun add-qualifier (&rest qualifier)
  "add qualifier to identify them in decls"
  (loop for i in qualifier do
       (if (listp i)
	   (add-qualifier i)
	   (setf (gethash (intern (symbol-name i) :cgen) *qualifier*) t))))

;;; Standard qualifiers
(add-qualifier 'struct 'static 'const 'long 'unsigned)

;;; Defines node class and add to known nodes (*node*).
(defmacro defnode (name superclass-list slot-list &optional &rest options)
  "define nodes with slot initialisation :initarg :<name>"
  (let ((slots (loop for slot in slot-list collect
		    `(,slot :initarg ,(intern (symbol-name slot) :keyword)))))
    (if options
	`(setf (gethash
		(defclass ,name ,superclass-list ,slots .,options) *node*) t)
	`(setf (gethash 
		(defclass ,name ,superclass-list ,slots) *node*) t))))

;;; Defines multiple nodes at once.
(defmacro defnodes (&body nodes)
  "define multiple nodes like defnode"
  (let ((nodes (loop for node in nodes collect
		    `(defnode .,node))))
    `(progn .,nodes)))

;;; Store handler function in hash table and add mapping
;;; from its tags to the function.
(defun register-handler (tags name func)
  "associate functions with symbols in tag-lists"
  (setf (gethash name *handler*) func)
  (loop for i in tags do
       (setf (gethash i *handler-key*) name)))

(defun get-handler (name)
  "get handler by name"
  (gethash name *handler*))

(defun find-handler (tag)
  "get handler by function tag"
  (gethash (gethash tag *handler-key*) *handler*))


;;; The handler (lambda) function is stored in the *handler* hash table and
;;; additionally a standard macro for cg-user
;;; is prepared and stored in the *node-macro-list*.
(defmacro defhandler (name tag-list arg-list &body body)
  "define handler-function with args (and associate to tags) and create macro"
  (let ((gen-args (gensym))
	(macro-param (remove 'tag arg-list)))
    (let ((macro-body (get-body macro-param))
	  (macro-args (get-args macro-param))
	  (body (if (eql (first arg-list) 'tag)
		    (append `((if (not (eql (gethash ,(first arg-list) *handler-key*) ',name)) 
				  (error "false handler call (~s) for: ~s" ',name ,(first arg-list)))) body)
		    body)))
      `(let ((macro-args ',macro-args)
	     (macro-body ',macro-body))
	 (loop for i in ',tag-list do
	      (setf (gethash i *node-macro-list*)
		    `(defnodemacro2 ,i ,',macro-param
		       `(make-node (list ',',i ,,@macro-args ,@,@macro-body)))))
	 (register-handler ',tag-list ',name (lambda (,gen-args)
			     (destructuring-bind ,arg-list ,gen-args
			       .,body)))))))


;;; Defelement combines the definition of a node and a handler.
(defmacro %defelement (name tag-list slot-list arg-list body &optional &key (superclasses '(node)))
  "define node '<name>' and '<name>-handler' handler"
  `(progn
     (loop for i in ',tag-list do
	  (setf (gethash i *special-node*) nil))
     (defnode ,name ,superclasses ,slot-list)
     (defhandler ,(intern (format nil "~a-HANDLER" name)) ,tag-list ,arg-list ,@body)))

(defmacro defelement (name tag-list slot-list arg-list &body body)
  "Creates an element derived from node"
  `(%defelement ,name ,tag-list ,slot-list ,arg-list ,body))

(defmacro defexpression (name tag-list slot-list arg-list &body body)
  "Creates an element derived from expression"
  `(%defelement ,name ,tag-list ,slot-list ,arg-list ,body :superclasses (expression)))

(defmacro defstatement (name tag-list slot-list arg-list &body body)
  "Creates an element derived from statement"
  `(%defelement ,name ,tag-list ,slot-list ,arg-list ,body :superclasses (statement)))

;;; Used to define macros in the cg-user package for c-nodes. 
(defmacro %defnodemacro (name lambda-list body &optional &key special) 
  "define specific macro for node '<name>'"
  (let ((macro-body (get-body lambda-list))
	(macro-args (get-args lambda-list)))
    (let ((line ``(gethash '(,',(intern (format nil "~a" name) :cg-user) ,,@macro-args ,@,@macro-body) *line-hash*))
	  (file ``(gethash '(,',(intern (format nil "~a" name) :cg-user) ,,@macro-args ,@,@macro-body) *file-hash*)))
      `(progn
	 ,(if special `(setf (gethash ',name *special-node*) t))
	 (defmacro ,(intern (format nil "~a" name) :cg-user) ,lambda-list
	   `(make-node (list 'source-pos ,,line ,,file ,,@body)))
	 (defmacro ,(intern (format nil "~a" name) :cg-swap) ,lambda-list 
	   `(make-node (list 'source-pos ,,line ,,file ,,@body)))))))

;;; Used for manual definition of node-macros.
(defmacro defnodemacro (name lambda-list &body body)
  `(%defnodemacro ,name ,lambda-list ,body :special t))

;;; Used by the 'defelement'- function to create basic standard macros.
(defmacro defnodemacro2 (name lambda-list &body body)
  `(%defnodemacro ,name ,lambda-list ,body))

;;; This function decides based on the list content 
;;; which handler is responsible for the node-creation.
;;; All macros used for node cration are build upon / point to 
;;; this function.
(defun make-node (&optional item handler)
  "call implicit or explicit node-handler"
  (if item
      (if handler
	  (let ((func (get-handler handler)))
	    (if func
		(cond
		  ((listp item) (funcall func item))
		  (t (funcall func (list item))))
		(error "unknown handler: ~s~%" handler)))
	  (cond
	    ((listp item)
	     (let ((func (find-handler (first item)))
		   (node (gethash (class-of (first item)) *node*)))
	       (cond
		 (func (funcall func item))
		 (node (funcall (get-handler 'nodelist-handler) item))
		 (t
		  (progn
		    (if (not (gethash (first item) *function*))
			(progn 
			  (warn "handler for '~s' not found, assuming function-call" (first item))
			  (setf (gethash (first item) *function*) t)))
 		    (funcall (get-handler 'funcall-handler) item))))))
	    ((numberp item)
	     (funcall (get-handler 'constant-handler) (list item)))
	    ((symbolp item)
	     (funcall (get-handler 'identifier-handler) (list item)))
	    ((stringp item)
	     (funcall (get-handler 'string-literal-handler) (list item)))
	    ((characterp item)
	     (funcall (get-handler 'constant-handler) (list item)))
	    ((gethash (class-of item) *node*)
	     item)
	    (t (error "unknown atom found: ~a" item))))
      nil))

;;; Essentially just 'make-node' but adds an extra nodelist
;;; if the AST has no common root.
(defun build-ast (x)
  "build abstact syntax tree with listing"
  (if (listp (first x))
      (make-node x 'nodelist-handler)
      (make-node x)))


(defun split-declaration-item (item)
  "split declartion item in qualifiers and type+identifier"
  (let ((qualifiers nil) (parameter item))
    (loop while (gethash (cond ((symbolp (first parameter)) (intern (symbol-name (first parameter)) :cgen))
			       ((stringp (first parameter)) (intern (first parameter) :cgen))

			       ;;allows further qualifier handling in special form:
			       ;; ((decl (((fancy-function) int foo)) ...))
			       ((listp (first parameter))
				(intern (symbol-name (first (first parameter))) :cgen))

			       (t (first parameter)))
			 *qualifier*) do
	 (push (pop parameter) qualifiers))
    `(,(reverse qualifiers) ,parameter)))

(defun get-declaration-name (item &optional &key (fp nil))
  "return the name of a declatation item"
  (destructuring-bind (type name &optional value) (second (split-declaration-item item))
    (declare (ignore type value))
    (cond ((symbolp name) (if (not fp) (clear name '(#\*))))
	  ((listp name)
	   (cond ((eql (first name) 'cg-user::fpointer) (second name))
		 ((and (not fp) (eql (first name) 'cg-user::aref)) (second name))
		 ((and (not fp) (eql (first name) 'cg-user::array)) (second name)) 
		 ((and (not fp) (eql (first name) 'cg-user::funcall)) (second name))
		 ((and (not fp) (eql (first (macroexpand-1 name)) 'cg-user::funcall)) (first name))
		 ((not fp) (first (reverse (flatten name))))))
	  (t (error "'~a' not useable as variable identifier~%" name)))))

(defun prepare-bindings (bindings)
  "prepare bindigns like: ((long long int k (+ 1 1))(int i 0)) -> (list (list 'long 'long 'int k (+ 1 1)) (list 'int i 0))"
  (let ((ret (loop for i in bindings collect
		  (let ((k (split-declaration-item i)))
		    `(list ,@(loop for n in (first k) collect 
				  (if (listp n)
				      n
				      `',n))
			   ,(if (listp (first (second k)))
				(first (second k))
				`',(first (second k)))
			   ,@(rest (second k)))))))
    (push 'list ret)))
	     

