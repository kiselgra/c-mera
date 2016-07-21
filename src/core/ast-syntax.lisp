;;;; This file contains syntax definitions, which are too complex to
;;;; be handled by the standard macros defined by ast-nodes.
;;;;
;;;; Additionally some elements can be reduced to existing nodes.

(in-package :cgen)

;;; Create a block statement with brackets.
(defnodemacro block (&body body)
  `(make-node (list ,@body) 'compound-statement-handler))

;;; Similar to lisp-progn (without brackets compared to 'block').
(defnodemacro progn (&body body)
  `(make-node
    (list (list ,@body) 'expression-statement-handler)
    'set-nodelist-handler))

;;; Similar to lisps let-function.
;;; Declares some variables/symbosl for the local lexical scope.
(defnodemacro decl (bindings &body body)
  (let* ((var-names (remove nil (loop for i in bindings collect (get-declaration-name i))))
	 (fp-names (remove nil (loop for i in bindings collect (get-declaration-name i :fp t))))
	 (lets (loop for i in var-names collect `(,i ',i)))
	 (mlets (loop for i in fp-names collect `(,i (&rest rest) `(funcall ,',i ,@rest)))))
    `(let ,lets
       (declare (ignore ,@fp-names))
       (macrolet ,mlets
	 (make-node (list 'decl ,(prepare-bindings bindings) ,@body) 'declaration-list-handler)))))

;;; This function is equivalent to "(= a 4)" but additionally
;;; multiple assignments like "(set a 4 b 5)" are possible.
(defnodemacro set (variable value &rest rest)
  (if rest
      `(make-node
	(list
	 (list 
	  (make-node (list '= ,variable ,value))
	  ,@(loop while rest collect
		 `(make-node (list '= ,(pop rest) ,(pop rest)))))
	 'expression-statement-handler)
	'set-nodelist-handler)
      `(make-node (list '= ,variable ,value))))

;;; This is the function definition.
;;; Defined function are also stored in the *function* hash
;;; thus they can be used directly in the whole cgen-file.
(defnodemacro function (name parameters -> type &body body)
  (let ((arrow ->)
	(parameter-names (loop for i in parameters collect (get-declaration-name i)))
	(fp-names (remove nil (loop for i in parameters collect (get-declaration-name i :fp t)))))
    (let ((lets (loop for i in parameter-names collect `(,i ',i)))
	  (mlets (loop for i in fp-names collect `(,i (&rest rest) `(funcall ,',i ,@rest)))))
      (eval `(locally
		 (declare (sb-ext:muffle-conditions sb-kernel:redefinition-warning))
	       (handler-bind ((sb-kernel:redefinition-warning #'muffle-warning))
		 (defmacro ,name (&rest body) `(cg-user::funcall ,',name ,@body)))))
      (eval `(defparameter ,name ',name))
	  ;; dirty hack to muffle 'undefined variable' warning
	  ;; TODO find better solution
	  (if (not (listp type))
		(eval `(defvar ,type)))
      `(let ,lets
	 (declare (ignore ,@fp-names))
	 (macrolet ,mlets
	     (make-node (list 'function ',name ,(prepare-bindings parameters) ',arrow 
						  (locally
							(declare (sb-ext:muffle-conditions sb-kernel::style-warning))
						  (handler-bind ((sb-kernel::style-warning #'muffle-warning))	
							(if (macrop ,type) ,type ',type))) ,@body)
						  'function-definition-handler))))))

(defnodemacro struct (name &body body)
  `(make-node (list 'struct ',name ,@body) 'struct-definition-handler))

(defnodemacro union (name &body body)
  `(make-node (list 'union ',name ,@body) 'union-definition-handler))

(defnodemacro funcall (function &optional &rest parameter)
  (if (and
	(listp function)
	(or 
	  (find-handler (cg-user::cintern (format nil "~a" (first function)) 'cgen))
	  (fboundp (first function))))
      `(make-node (list 'funcall ,function ,@parameter))
      `(make-node (list 'funcall ',function ,@parameter))))

(defnodemacro fpointer (name parameters)
  (let ((parameters (mapcar #'(lambda (x) `(,x)) parameters)))
    `(make-node (list 'fpointer (cg-user::targ-of ',name) ,(prepare-bindings parameters)) 'function-pointer-handler)))

;;; This macrohandles emtpy initialization in for-loops.
(defnodemacro for (init &body body)
  (if (first init)
      (let ((declarations (get-declaration-name (first init))))
	`(let ((,declarations ',declarations))
	   (make-node (list 'for (list ,(second (prepare-bindings (list (first init)))) ,(second init) ,(third init)) ,@body))))
      `(make-node (list 'for (list nil ,(second init) ,(third init)) ,@body))))

;;; Neither pointer compontent nor object componentes
;;; (in object reference) need to be defined by let 
;;; or need quotation.
(defnodemacro pref (pointer component)
  (if (symbolp component)
      `(make-node (list 'pref ,pointer ',component))
      `(make-node (list 'pref ,pointer ,component))))

(defnodemacro oref (object component)
  (if (symbolp component)
      `(make-node (list 'oref ,object ',component))
      `(make-node (list 'oref ,object ,component))))

(defnodemacro targ-of (pointer)
  `(make-node (list 'prefix ,pointer '*)))

(defnodemacro addr-of (item)
  `(make-node (list 'prefix ,item '&)))

;;; This version caused problems with cast composed of mutliple works/types/qualifiers
;; (defnodemacro cast (&rest rest)
;;   `(make-node (list 'cast ',(loop for i in 
;; 				 (reverse (rest (reverse rest)))
;; 				 collect i) ,@(last rest))))

(defnodemacro cast (&rest rest)
  `(make-node (list 'cast
		    (list ,@(loop for i in (butlast rest) collect
			   (if (and (listp i)
				    (not (gethash (car i) *qualifier*)))
			       i
			       `',i)))
		    ,@(last rest))))

(defnodemacro include (file)
  `(make-node (list 'include ',file)))

(defnodemacro macro (name function &body body)
  `(make-node (list ',name ',function ,body)))

(defnodemacro array (name &rest initialization)
  `(make-node (list 'aref ,name ,@initialization)))

(defnodemacro comment (comment &optional &key prefix)
  (if (stringp comment)
      (if prefix
	  `(make-node (list 'comment ',(cg-user::cintern comment) ',(cg-user::cintern prefix)))
	  `(make-node (list 'comment ',(cg-user::cintern comment) ',(cg-user::cintern "//"))))
      (if prefix
	  `(make-node (list 'comment `,(cg-user::cintern ,comment) ',(cg-user::cintern prefix)))
	  `(make-node (list 'comment `,(cg-user::cintern ,comment) ',(cg-user::cintern "//"))))))

(defnodemacro typedef (&rest rest)
  (let ((typename (if (listp (first (butlast rest)))
		      (first (butlast rest))
		      (butlast rest)))
	(aliasname (first (last rest))))
    `(progn
       (cg-user::use-variables ,aliasname)
       (make-node (list 'typedef ',typename ,aliasname))))) 

(defnodemacro - (&rest numbers)
  (if (eql (length numbers) 1)
      `(make-node (list 'prefix ,(car numbers) '-))
      `(make-node (list '- ,@numbers))))

(defnodemacro + (&rest numbers)
  (if (eql (length numbers) 1)
      `(make-node (list 'prefix ,(car numbers) '+))
      `(make-node (list '+ ,@numbers))))

(defnodemacro sizeof (&rest type)
  `(make-node (list 'funcall 'sizeof (make-node ',type 'declaration-item-handler))))

;;; Switch context to cgen
(defmacro with-cgen (&body body)
  `(macrolet ,*with-cgen-declaration*
     ,@body))

;;; Switch context to lisp
(defmacro with-lisp (&body body)
  `(macrolet ,*with-lisp-declaration*
     ,@body))

;;; Switch context to cgen more convenient
(defmacro cg-user::cgen (&body body)
  `(with-cgen (list ,@body)))

;;; Switch context to lips more convenient
(defmacro cg-user::lisp (&body body)
  `(with-lisp (progn ,@body)))


;;; Defines a Lisp-Macro (independent of context).
(defmacro cg-user::deflmacro (name lambda-list &body body)
  `(with-lisp
     (defmacro ,name ,lambda-list
       `(with-lisp
	  ,,@body))))

;;; Defines a macro (depending on context).
(defmacro cg-user::defmacro (name lambda-list &body body)
  `(defmacro ,name ,lambda-list ,@body))

;;; Defines a function
(defmacro cg-user::defun (name args &body body)
  `(progn 
     (defun ,name ,args ,@body)
     (defun ,(intern (format nil "~a" name) :cg-swap) ,args ,@body)))

;;; Inverts the case when interning a string.
;;; This is needed to keep the correct internal (inverted) case.
;;; Use this function for all c depending code.
(defun cg-user::cintern (name &optional package)
  (macrolet ((case-test (test string)
	       `(eval `(and ,@(mapcar (lambda(x) (or (not (both-case-p x)) (,test x))) (coerce ,string 'list))))))
    (let ((string (cond ((case-test upper-case-p name) (string-downcase name))
			((case-test lower-case-p name) (string-upcase name))
			(t name))))
      (if package
	  (intern string package)
	  (intern string)))))

;;; Prepare standard macros defined by defelement.
(defun prepare-handler ()
  (loop for key being the hash-key of *node-macro-list* using (hash-value macro) do
       (if (not (gethash key *special-node*))
	   (eval macro))))

;;; Eval all standard macros.
(prepare-handler)


;;; Prepare macrolet bindings for context-switch-functions.
(loop for key being the hash-keys of *imported-symbols* using (hash-value lambda-list) do
     (let ((lisp-body (get-body lambda-list))
	   (lisp-args (get-args lambda-list))
	   (cgen-lambda-list (sb-introspect:function-lambda-list (intern (format nil "~a" key) :cg-user))))
       (let ((cgen-body (get-body cgen-lambda-list))
	     (cgen-args (get-args cgen-lambda-list)))
	 (push `(,(intern (format nil "~a" key) :cg-user)
		  ,lambda-list `(,',key ,,@lisp-args ,@,@lisp-body)) *with-lisp-declaration*)
	 (push `(,(intern (format nil "~a" key) :cg-user)
		  ,cgen-lambda-list `(,',(intern (format nil "~a" key) :cg-swap)
					 ,,@cgen-args ,@,@cgen-body)) *with-cgen-declaration*))))

;;; special functions in cg-user, declared here for reuse in other packages
(in-package :cg-user)
(deflmacro use-variables (&rest variables)
  `(progn
     (if cgen::*be-verbose*
	 (format t "using variables: ~{~a, ~}~%" ',variables))
     ,@(loop for i in variables collect
	    `(defparameter ,i ',i))
	 (values)))

(deflmacro use-functions (&rest functions)
  `(progn
     (if cgen::*be-verbose*
	 (format t "using functions: ~{~a, ~}~%" ',functions))
     ,@(loop for i in functions collect
	    `(defmacro ,i (&rest body) `(cg-user::funcall ,',i ,@body)))))
