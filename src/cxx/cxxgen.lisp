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

;; pretty-print override

;; override function declaration with empty parameter list
;; from "(void)" to "()"
(with-pp
  "pretty-print function definition"

  (with-proxynodes (parameters parameter)

    ;; Begin new line and add proxy-nodes.
    (defprettymethod :before function-definition
      (make-proxy parameter parameters)
	  (if (not (slot-value item 'body))
		(push-info 'function-declaration))
      (format stream "~&~%~a" indent))

    ;; Remove temporary proxy-nodes
    (defprettymethod :after function-definition
      (del-proxy parameter)
	  (if (eql (top-info) 'function-declaration)
		(format stream ";")))

    ;; Begin parameter-list.
    ;; Differs from standard core implementation
    (defproxyprint :before parameters
	  (format stream "("))

    ;; Close parameter-list.
    (defproxyprint :after parameters
      (format stream ")"))

    ;; Handle parameters
    ;; Add proxy-node and info-token.
    (defprettymethod :before parameter-list
      (push-sign 'skip-first)
      (make-proxy parameters parameter))

    ;; Remove proxy node
    (defprettymethod :after parameter-list
      (del-proxy parameters))

    ;; Print parameters
    (defproxyprint :before parameter
      (if (eql (top-sign) 'skip-first)
	  (pop-sign)
	  (format stream ", ")))))

;; Overrite declaration item behaviour:
;; "int i { 1 }" instead of "int i = 1"
;; except in for-loop-initialization.
(with-pp
  (with-proxynodes (value)
    
    (defprettymethod :before declaration-item
      (make-proxy value value))

    (defprettymethod :after declaration-item
      (del-proxy value))

    (defproxyprint :before value
      (if (slot-value item 'proxy-subnode)
	  (if (eql (top-info) 'for)
	      (format stream " = ")
	      (format stream " { "))))

    (defproxyprint :after value
      (if (slot-value item 'proxy-subnode)
	  (if (not (eql (top-info) 'for))
	      (format stream " }"))))))

;; Override C-list / vector brackets.
;; Does not emmit brackets.
;; Brackets already handled by declaration.
(with-pp
  (with-proxynodes (list-item)

    (defprettymethod :before c-list
      (make-proxy items list-item)
      (push-info 'skip-first))

    (defprettymethod :after c-list
      (del-proxy items))

    (defproxyprint :before list-item
      (if (eql (top-info) 'skip-first)
	  (pop-info)
	  (format stream ", ")))))

;; Override c-type
;; enables more coplex types. e.g. templates
(defelement c-type () (type) (type)
  (let ((type (cond ((symbolp type) (clear type '(#\& #\*)))
		    ((listp type) (first (reverse (flatten type))))
		    (t type))))
    (if (symbolp type)
	(progn
	  (if (not (gethash type *type*))
	      (setf (gethash type *type*) t))
	  (make-instance 'c-type
			 :type type
			 :values '(type)
			 :subnodes '()))
	(make-instance 'c-type
		       :type type
		       :values '()
		       :subnodes '(type)))))



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
		 :namespace (make-node namespace)
		 :values '()
		 :subnodes '(namespace)))

(defstatement using (using item) (item) (tag item)
  (make-instance 'using
		 :item (make-node item)
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

(defelement instantiate (instantiate) (template arguments) (tag template parameter)
  (make-instance 'instantiate
		 :template (make-node template)
		 ;;:arguments (make-node parameter 'cgen::nodelist-handler)
		 :arguments parameter
		 :values '()
		 :subnodes '(template arguments)))

(defexpression new-item (new) (object) (tag object)
   (make-instance 'new-item
		  :object object
		  :values '()
		  :subnodes '(object)))

(defstatement delete-item (delete delete[]) (tag object) (tag object)
	      (make-instance 'delete-item
			     :tag tag
			     :object (make-node object)
			     :values '()
			     :subnodes '(object)))

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
    (push-info 'using)
    (format stream "~&~ausing " indent))
  (defprettymethod :after using
    (pop-info)
    (format stream ";~%")))

(with-pp
    ;; (defprettymethod :before from-namespace
    ;;   (push-info 'from-namespace))
    (defprettymethod :self from-namespace
      (if (slot-value item 'namespace)
	  (format stream "~a::" (slot-value item 'namespace))
	  (format stream "::"))))
    ;; (defprettymethod :after from-namespace
    ;;   (pop-info)
;; (if (and (not (eql (top-info) 'from-namespace))
;;       (not (eql (top-info) 'using))
;;       (not (eql (top-info) 'cgen::funcall-function)))
;;     (format stream " "))))
    
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
       (format stream ">"))
       ;; (if (eql (top-info) 'template-instantiation)
       ;; 	   (format stream ">")
       ;; 	   (format stream ">")))
     (defproxyprint :after template
       (format stream "<"))
     (defproxyprint :before arguments
       (if (eql (top-info) 'skip-first)
     	   (pop-info)
     	   (format stream ", ")))))

;;; replace pretty printer for types
(with-pp
    (defprettymethod :after cgen::c-type
      (if (and (not (eql (top-info) 'cgen::cast))
	       (not (eql (top-info) 'cgen::funcall))
	       (not (eql (top-info) 'cgen::function-pointer))
	       ;; extra:
	       (not (eql (top-info) 'template-instantiation)))
	  (format stream " "))))
    
(with-pp
    (defprettymethod :before new-item
      (format stream "new ")))

(with-pp
    (defprettymethod :before delete-item
      (format stream "~&~a~a " indent (slot-value item 'tag)))
  (defprettymethod :after delete-item
    (format stream ";")))

;;syntax
(prepare-handler)

(add-qualifier 'inline)

;; Declare a C++ class and provide c'tor and d'tor definitions.
(defnodemacro class (name superclasses &body body)
  `(let ((cg-user::this 'this))
     (declare (ignorable cg-user::this))
     (macrolet ((cg-user::constructor (args &body body)
		  `(cg-user::function ,',name ,args -> nil
				      ,@body))
		;; We rely on cintern/format to prepend the d'tor's prefix.
		(cg-user::destructor (&body body)
		  `(cg-user::function ,',(cg-user::cintern (format nil "~~~a" name)) nil -> nil
				      ,@body)))
       (make-node (list 'cxx-class ',name ',superclasses ,@body)))))


(defnodemacro using (item)
  `(make-node (list 'using ,(if (listp item) item `',item))))

(defnodemacro using-namespace (item)
  `(make-node (list 'using-namespace ,(if (listp item) item `',item))))

(defnodemacro template (template-parameters &body body)
  (let* ((parameter-names (loop for i in template-parameters collect (cgen::get-declaration-name i)))
	 (lets (loop for i in parameter-names collect `(,i ',i))))
    `(let ,lets
       (make-node (list 'template ,(cgen::prepare-bindings template-parameters) ,@body)))))

(defnodemacro instantiate (name &rest parameters)
  `(make-node (list 'instantiate ,name
	      (make-node (list (list ,@(loop for i in parameters collect
				     (if (listp i) i
					 `(list ,i)))) 'cgen::declaration-item-handler)
			 'cgen::set-nodelist-handler))))

(defnodemacro new (&rest object)
  `(make-node (list 'new (make-node ,@object))))

(defnodemacro from-namespace (namespace &rest rest)
  (let ((namespace-cascade (first (last rest))))
    (loop for i in (rest (reverse rest)) do
      (setf namespace-cascade `(make-node (list 'from-namespace ,i ,namespace-cascade))))
    (setf namespace-cascade `(make-node (list 'from-namespace ,(if namespace
								   namespace
								   nil)
					      ,namespace-cascade)))
    namespace-cascade))

;;; Make sure the decl-blocker-traverser handles classes correctly.
(cgen::decl-blocker-extra-nodes cxx-class)

;;; Standard definitions
(in-package :cg-user)
(use-variables cout cerr endl cin)

(defmacro mcall (member &rest args)
  (lisp (let ((cascade nil)
	      (rmember (rest (reverse member)))
	      (first-elem (first (reverse member))))
	  (loop for i in rmember do
	       (if (eq i (first rmember))
		   (setf cascade `(oref ,i ,first-elem))
		   (setf cascade `(oref ,i ,cascade))))
	  `(funcall ,cascade ,@args))))

(deflmacro use-templates (&rest templates)
  `(progn
     (if cgen::*be-verbose*
	 (format t "using templates: ~{~a, ~}~%" ',templates))
     ,@(loop for i in templates collect
	    `(defmacro ,i (&rest parameters) `(instantiate ,'',i ,@(loop for k in parameters collect
										(if (symbolp k)
										    `',k
										    k)))))))
										    
										

