;;;standard cgen-funtions override:
(in-package :cgen)

;;; template instantiation reader
(defun pre-process (stream char)
  "pre-parse current symbol in stream and prepare actual nodes"
  (declare (ignore char))
  (let ((peek (peek-char nil stream nil nil nil)))
    ;;do not pre-process multiple whitespace or other special characters
    (if (not (or (eql peek #\))
		 (eql peek #\>)
		 (eql peek #\;)
		 (eql peek #\Space)
		 (eql peek #\Newline)
		 (eql peek #\Tab)))
	(pre-parse (read stream nil nil nil))
	(values))))

(defun sharp-less (stream char arg)
  (declare (ignore char arg))
  (let ((input (read-delimited-list #\> stream t)))
    (cg-user::cintern (format nil "~a<~{~a~^, ~}>" (first input) (rest input)))))

(defun sharp-colon (stream sub-char numarg)
  (sb-impl::ignore-numarg sub-char numarg)
  (multiple-value-bind (token escapep colon) (sb-impl::read-extended-token stream)
    (declare (simple-string token) (ignore escapep))
    ;(declare (ignore escapep))
    ;;cl-cookbook:
    ;;---
    (let ((tokens (remove "" (loop for i = 0 then (1+ j)
				 as j = (position #\: token :start i)
				 collect (subseq token i j)
				 while j) :test #'string=)))
      ;;--
      (labels ((cascade (x) (if (> (length x) 2)
			      `(cg-user::from-namespace ',(intern (first x)) ,(cascade (rest x)))
			      `(cg-user::from-namespace ',(intern (first x)) ',(intern (second x))))))
	(cascade tokens)))))

;;; copy from cgen.lisp 
;;; TODO make extendable for reuse -> class + multi method
(defun read-in (file &optional &key (debug nil))
  "reads cgen file and returns the cgen-ast"
  (push (count-lines file) *chars-per-line*)
  (push file *current-file*)
  (let ((nodes nil)
	(*readtable* (copy-readtable nil)))
    ;; Starts pre-processing for every symbol with leading space-character
    (set-dispatch-macro-character #\# #\: #'sharp-colon)
    (set-macro-character #\Space #'pre-process)
    (set-macro-character #\Tab #'pre-process)
    ;; Stores line and file inforation in global hash
    (if debug
	(set-macro-character #\( #'line-number-reader))

    ;; cxx 
    (set-dispatch-macro-character #\# #\< #'sharp-less)
    (set-dispatch-macro-character #\# #\: #'sharp-colon)
    
    (setf (readtable-case *readtable*) :invert) ;'preserve' original case
      (with-open-file (in file)
	(loop for s-expr = (read in nil nil nil)
	   while s-expr do
	     (let ((evaluated (eval s-expr)))
	       (cond
		 ((listp evaluated)
		  (if (gethash (class-of (first evaluated)) *node*)
		      (setf nodes (append nodes evaluated))))
		 (t
		  (if (gethash (class-of evaluated) *node*)
		      (setf nodes (append nodes (list  evaluated)))))))))
      (pop *current-file*)
      (pop *chars-per-line*)
      nodes))



;;cxxgen stuff:
(in-package :cxxgen)

;;nodes
(defelement superclass () (attribute superclass) (&rest superclass)
  (let ((attribute nil))
    (if (listp superclass)
	(progn
	  (setf attribute (first superclass))
	  (setf superclass (second superclass))))
    (make-instance 'superclass
		   :attribute attribute
		   :superclass superclass
		   :values '(attribute superclass)
		   :subnodes '())))
 
(defelement cxx-class (cxx-class) (name superclasses body) (tag name superclasses &body body)
  (make-instance 'cxx-class
		 :name (make-node name)
		 :superclasses (make-node (list superclasses 'superclass-handler)
					  'cgen::set-nodelist-handler)
		 :body (make-node body 'cgen::compound-statement-handler)
		 :values '()
		 :subnodes '(name superclasses body)))

(defelement access-specifier (public private protected) (specifier body) (tag &body body)
  (make-instance 'access-specifier
		 :specifier tag
		 :body (make-node (list body 'cgen::expression-statement-handler)
				  'cgen::set-nodelist-handler)
		 :values '(specifier)
		 :subnodes '(body)))

(defelement namespace (namespace) (namespace body) (tag namespace &body body)
  (make-instance 'namespace
		 :namespace namespace
		 :body (make-node body 'cgen::compound-statement-handler)
		 :values '(namespace)
		 :subnodes '(body)))

(defstatement using-namespace (using-namespace) (namespace) (tag namespace)
  (make-instance 'using-namespace
		 :namespace namespace
		 :values '(namespace)
		 :subnodes '()))

(defstatement using (using item) (item) (tag item)
  (make-instance 'using
		 :item item
		 :values '()
		 :subnodes '(item)))

(defelement from-namespace (from-namespace) (namespace namespace-symbol) (tag namespace namespace-symbol)
  (make-instance 'from-namespace
		 :namespace namespace
		 :namespace-symbol (make-node namespace-symbol)
		 :values '(namespace)
		 :subnodes '(namespace-symbol)))

(defelement template (template) (parameters body) (tag parameter &body body)
  (make-instance 'template
		 :parameters (make-node parameter 'cgen::parameter-list-handler)
		 :body (make-node body)
		 :values '()
		 :subnodes '(parameters body)))

(defelement instantiate (instantiate) (template arguments) (tag template &optional &rest parameter)
  (make-instance 'instantiate
		 :template (make-node template)
		 :arguments (make-node parameter 'cgen::nodelist-handler)
		 :values '()
		 :subnodes '(template arguments)))

;;pretty
(with-pp
  (defprettymethod :before cxx-class
    (push-sign 'first-superclass)
    (format stream "~&~%~aclass " indent))
  (defprettymethod :after cxx-class
    (format stream ";"))
  (defprettymethod :self superclass
    (if (eql (top-sign) 'first-superclass)
	(progn (pop-sign)
	       (format stream ": "))
	(format stream ", "))
    (if (slot-value item 'attribute)
	(format stream "~a ~a" 
		(slot-value item 'attribute)
		(slot-value item 'superclass))
	(format stream "~a"
		(slot-value item 'superclass))))
  
  (defprettymethod :self access-specifier
    --indent
    (format stream "~&~a~a:" indent (slot-value item 'specifier))
    ++indent))

(with-pp
  (defprettymethod :before namespace
    (format stream "~&~anamespace " indent)))

(with-pp
  (defprettymethod :before using-namespace
    (format stream "~&~ausing namespace " indent))
  (defprettymethod :after using-namespace
    (format stream ";~%")))

(with-pp
  (defprettymethod :before using
    (push-sign 'using)
    (format stream "~&~ausing " indent))
  (defprettymethod :after using
    (pop-sign)
    (format stream ";~%")))

(with-pp
    (defprettymethod :before from-namespace
      (push-sign 'from-namespace))
    (defprettymethod :self from-namespace
      (if (slot-value item 'namespace)
	  (format stream "~a::" (slot-value item 'namespace))
	  (format stream "::")))
    (defprettymethod :after from-namespace
      (pop-sign)
      (if (and (not (eql (top-sign) 'from-namespace))
	       (not (eql (top-sign) 'using)))
	  (format stream " "))))
    
(with-pp
  (with-proxynodes (template-parameters)
    (defprettymethod :before template
      (make-proxy parameters template-parameters)
      (format stream "~&~atemplate " indent))
    (defprettymethod :after template
      (del-proxy parameters))
    (defproxyprint :before template-parameters
      (format stream "<"))
    (defproxyprint :after template-parameters
      (format stream ">"))))

(with-pp
   (with-proxynodes (template arguments)
     (defprettymethod :before instantiate
       (push-info 'template-instantiation)
       (push-info 'skip-first)
       (make-proxy template template)
       (make-proxy arguments arguments))
     (defprettymethod :after instantiate
       (del-proxy template)
       (del-proxy arguments)
       (pop-info)
       (if (eql (top-info) 'template-instantiation)
	   (format stream ">")
	   (format stream "> ")))
     (defproxyprint :after template
       (format stream "<"))
     (defproxyprint :before arguments
       (if (eql (top-info) 'skip-first)
	   (pop-info)
	   (format stream " ,")))))

;;overwrite declaration item behaviour: "int i(1)" instead of "int i = 1"
(with-pp
  (with-proxynodes (value)
    
    (defprettymethod :before cgen::declaration-item
      (make-proxy cgen::value value))

    (defprettymethod :after cgen::declaration-item
      (del-proxy cgen::value))

    (defproxyprint :before value
      (if (slot-value item 'cgen::proxy-subnode)
	  (format stream " { ")))

    (defproxyprint :after value
      (if (slot-value item 'cgen::proxy-subnode)
	  (format stream " }")))))

;;syntax
(prepare-handler)

(add-qualifier 'inline)

(defnodemacro class (name superclasses &body body)
  `(make-node (list 'cxx-class ',name ',superclasses ,@body)))

(defnodemacro using (item)
  `(make-node (list 'using ',item)))

(defnodemacro using-namespace (item)
  `(make-node (list 'using-namespace ',item)))

(defnodemacro template (template-parameters &body body)
  (let* ((parameter-names (loop for i in template-parameters collect (cgen::get-declaration-name i)))
	 (lets (loop for i in parameter-names collect `(,i ',i))))
    `(let ,lets
       (make-node (list 'template ,(cgen::prepare-bindings template-parameters) ,@body)))))

;; (defnodemacro instantiate (name &rest parameters)
;;   `(make-node (list 'instantiate ',name ,@(loop for i in parameters collect `,i))))

;;; Make sure the decl-blocker-traverser handles classes correctly.
(cgen::decl-blocker-extra-nodes cxx-class)

;;; Standard definitions
(in-package :cg-user)
(use-variables cout cerr endl cin)

(defmacro mcall (member &rest args)
  `(funcall ,(append '(oref) member) ,@args))

(deflmacro use-templates (&rest templates)
  `(progn
     (if cgen::*be-verbose*
	 (format t "using templates: ~{~a, ~}~%" ',templates))
     ,@(loop for i in templates collect
	    `(defmacro ,i (&rest parameters) `(instantiate ,'',i ,@(loop for k in parameters collect
										(if (symbolp k)
										    `',k
										    k)))))))
										    
										

