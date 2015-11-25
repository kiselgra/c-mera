(in-package :cgen)

;;; Extend declatation item with glsl layout qualifier
(defelement declaration-item () (qualifier type identifier decorator value) (&rest item)
  (let ((qualifiers nil) (item item))
    (loop while (or (gethash (cond ((symbolp (first item)) (intern (symbol-name (first item)) :cgen))
				   ((listp (first item)) nil)
				   (t (first item)))
			     *qualifier*)
		    (if (eql (class-of (first item)) (find-class 'source-position))
			(eql (class-of (slot-value (first item) 'subnode)) (find-class 'glslgen::layout)))) do
	 (push (pop item) qualifiers))
    (destructuring-bind (&optional type identifier value) item
      (if value (setf value (make-node value)))
      (if identifier (setf identifier (make-node (if (symbolp identifier)
						     (clear identifier '(#\& #\*))
						     identifier))))
      (make-instance 'declaration-item
		     :qualifier (make-node (list (reverse qualifiers) 'qualifier-handler) 'set-nodelist-handler)
		     :type (make-node (list type) 'c-type-handler)
		     :identifier identifier
		     :decorator (make-node (list type identifier) 'decorator-handler)
		     :value value
		     :values '()
		     :subnodes '(qualifier type decorator identifier value)))))

(in-package :glslgen)

;;; Nodes

;;; Shader
(defelement shader (shader) (version body) (tag version body)
  (make-instance 'shader
		 :version version
		 :body body ;; definition in syntax section
		 :values '(version)
		 :subnodes '(body)))

;;; Layout parameter item
(defelement layout-item () (qualifier value) (&rest item)
  (destructuring-bind (qualifier &optional value) item
    (if value (setf value (make-node value)))
    (make-instance 'layout-item
		   :qualifier (make-node qualifier 'cgen::qualifier-handler)
		   :value value
		   :values '()
		   :subnodes '(qualifier value))))

;;; Layout item
(defelement layout (layout) (parameters) (tag parameter-list)
  (make-instance 'layout
		 :parameters (make-node
			      (list parameter-list 'layout-item-handler)
			      'cgen::set-nodelist-handler)
		 :values '()
		 :subnodes '(parameters)))

;;; Pretty printing

;;; Shader
(with-pp
  (defprettymethod :before shader
    (format stream "~&~ashader{" indent)
    ++indent)
  (defprettymethod :self shader
    (format stream "~&~a#version ~{~a ~}" indent (slot-value item 'version)))
  (defprettymethod :after shader
    --indent
    (format stream "~&~a}shader" indent)))


;;; Layout qualifier
(with-pp
  (with-proxynodes (value)
    
    (defprettymethod :before layout
      (push-sign 'skip-first)
      (format stream "layout("))
    (defprettymethod :after layout
      (format stream ") "))
    (defprettymethod :before layout-item
      (if (eql (top-sign) 'skip-first)
	  (pop-sign)
	  (format stream ", "))
      (make-proxy value value))
    (defprettymethod :after layout-item
      (del-proxy value))
    (defproxyprint :before value
      (if (slot-value item 'cgen::proxy-subnode)
	  (format stream  "= ")))))


;;; GLSL
(add-qualifier 'in 'out 'uniform 'layout)

;;; Syntax

(defnodemacro shader (version &body body)
  `(make-node (list 'shader ',version 
		    (make-node (list (list ,@body) 'cgen::expression-statement-handler)
			       'cgen::set-nodelist-handler)) 'shader-handler))


(defnodemacro layout (&rest parameter-list)
  ;;; TODO check in paramter list if item is qualifier, then quote or not.
  `(make-node (list 'layout (list ,@(loop for i in parameter-list collect
					 (if (rest i)
					     `(list ',(first i) ,@(rest i))
					     `(list ',(first i)))))) 'layout-handler))
					 ;; `(list ',(first i) ,@(if (rest i)
					 ;; 			  (rest i)
					 ;; 			  (values) ))))) 'layout-handler))

(defnodemacro sh-decl (declarations &body body)
  `(make-node (list 'cgen::decl ,(cgen::prepare-bindings declarations) ,@body) 'cgen::declaration-list-handler))
