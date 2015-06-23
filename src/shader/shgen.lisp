(in-package :shgen)

;;; Nodes

;;; Scheme readmacro nodes
(defelement scheme-node () (type version body) (type version &body body)
  (make-instance 'scheme-node
		 :type type
		 :version version
		 :body (make-node body)
		 :values '(type version)
		 :subnodes '(body)))

;;; Scheme reader list
(defelement headline () (type name listp body) (type name listp &body body)
  (make-instance 'headline
		 :type type
		 :name (make-node (list name) 'cgen::string-literal-handler)
		 :listp listp
		 :body (make-node body)
		 :values '(type)
		 :subnodes '(name body)))

;;; inputs and uniforms
(defelement iu-lists (uniforms inputs) (type list) (type list)
  (make-instance 'iu-lists
		 :type type
		 :list list
		 :values '(type list)
		 :subnodes '()))

;;; Pretty printing

(with-pp
  (with-proxynodes (name)

    (defprettymethod :self headline
      (format stream "~&#<~a " 
	      (slot-value item 'type)))

    (defprettymethod :after headline
      (format stream ">"))))

(with-pp
  (with-proxynodes ()

    (defprettymethod :self scheme-node
      (if (slot-value item 'version)
	  (format stream "~&#:~a #{~%#version ~a"
		  (slot-value item 'type)
		  (slot-value item 'version))
	  (format stream "~&#{"
		  (slot-value item 'type))))

    
    (defprettymethod :after scheme-node
      (if (slot-value item 'version)
	  (format stream "~&}")))))
  
;;; Syntax
  
(defnodemacro vertex-shader (version &body shader)
    `(make-node (list 'vertex-shader ',version ,@shader) 'scheme-node-handler))

(defnodemacro fragment-shader (version &body shader)
  `(make-node (list 'fragment-shader ',version ,@shader) 'scheme-node-handler))

(defnodemacro geometry-shader (version &body shader)
  `(make-node (list 'geometry-shader ',version ,@shader) 'scheme-node-handler))

(defnodemacro tess-control-shader (version &body shader)
  `(make-node (list 'tess-control-shader ',version ,@shader) 'scheme-node-handler))

(defnodemacro tess-eval-shader (version &body shader)
  `(make-node (list 'tess-eval-shader ',version ,@shader) 'scheme-node-handler))

(defnodemacro compute-shader (version &body shader)
  `(make-node (list 'compute-shader ',version ,@shader) 'scheme-node-handler))

(defnodemacro scheme-list (&body body)
  `(make-node (list 'dummy nil ,@body) 'scheme-node-handler))

(defnodemacro inputs (&rest inputs)
  `(make-node (list 'cgen::comment (append '(list) '(,(format nil "~{ \"~a\"~}" inputs))) ,'(cg-user::cintern "#:inputs "))))

(defnodemacro inputs2 (&rst inputs)
  `(make-node (list 'cgen::comment (append '(list) '(,(format nil "~{ \"~a\"~}" inputs))) ,'(cg-user::cintern ""))))

(defnodemacro uniforms (&rest uniforms)
  `(make-node (list 'cgen::comment (append '(list) '(,(format nil "~{ \"~a\"~}" uniforms))) ,'(cg-user::cintern "#:uniforms "))))

(defnodemacro uniforms2 (&rest uniforms)
  `(make-node (list 'cgen::comment (append '(list) '(,(format nil "~{ \"~a\"~}" uniforms))) ,'(cg-user::cintern ""))))


(defnodemacro make-shader (name &body body)
  `(make-node (list 'make-shader ',name nil ,@body) 'headline-handler))

(defnodemacro register-single-material-shader-fragment (name &body body)
  `(make-node (list 'register-single-material-shader-fragment
		    ',name t ,@body) 'headline-handler))
  

