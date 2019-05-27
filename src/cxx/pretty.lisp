(in-package :cm-c++)

;;; =============================
;;; cm-c pretty printing override
;;; =============================

;; override function declaration 
;; - empty parameter list from "(void)" to "()"
;; - move parameter parentheses to proxy-node
;; - emit ';' if body is set-node -> pure-virtual
(with-pp
  (with-proxynodes (parameters parameter)

    ;; Begin new line and add proxy-nodes.
    (defprettymethod :before function-definition
      (make-proxy parameter parameters)
      (if (eql (top-info) 'template)
	  (format stream "~&")
	  (format stream "~&~%"))
      (push-info 'function-definition)
      (format stream "~a" indent)
      (if (node-slot virtual)
	  (format stream "virtual ")))

    ;; Remove temporary proxy-nodes
    (defprettymethod :after function-definition
      (del-proxy parameter)
      (pop-info)
      (when (or (not (node-slot body))
		(typep (node-slot body) 'assignment-expression))
	(format stream ";")))
    
    ;; Begin parameter-list.
    (defproxyprint :before parameters
      (format stream "("))
    
    ;; Close parameter-list.
    (defproxyprint :after parameters
      (format stream ")")
      (when (slot-value parent 'tail-qualifiers)
	(format stream " ")))

    ;; Handle parameters
    ;; Add proxy-node and info-token.
    (defprettymethod :before parameter-list
      (push-sign 'skip-first-parameter)
      (make-proxy parameters parameter))

    ;; Remove proxy node
    (defprettymethod :after parameter-list
      (del-proxy parameters)
      (when (eql (top-sign) 'skip-first-parameter)
	(pop-sign)))

    ;; Print parameters
    (defproxyprint :before parameter
      (if (eql (top-sign) 'skip-first-parameter)
	  (pop-sign)
	  (format stream ", ")))))

;;; list initializer
(with-pp
  (with-proxynodes (value)

    (defprettymethod :before declaration-list-initializer
      (make-proxy list-items value)
	  (push-sign 'skip-first-list-init)
	  (format stream " { "))

	(defprettymethod :after declaration-list-initializer
	  (when (eql (top-sign) 'skip-first-list-init)
		(pop-sign))
	  (del-proxy list-items)
	  (format stream " }"))

	(defproxyprint :before value
	  (if (eql (top-sign) 'skip-first-list-init)
		(pop-sign)
		(format stream ", ")))))



;; Override c type

;; suppressses clozure warnings
(delprettymethod :after type)

;; omit whitespace
(with-pp

  (defprettymethod :after type
    (let ((info (top-info)))
      (when (and (node-slot type)
		 (not (eql info 'cast-expression))
		 (not (eql info 'funcall))
		 (not (eql info 'declaration-item))
		 ;; extra:
		 (not (eql info 'template-instantiation)))
	(format stream " ")))))


;; Override for-loop / support 'foreach'
(with-pp
  (with-proxynodes (common-init default-init foreach-init test step container)

    (defprettymethod :before for-statement
      (push-info 'for)
      (make-proxy init common-init) ;; common init
      (if (node-slot step)
        (progn ;; default for-loop
          (make-proxy init default-init)
          (make-proxy test test)
          (make-proxy step step))
        (progn ;; foreach
          (make-proxy init foreach-init)
          (make-proxy test container))))

    (defprettymethod :after for-statement
      (pop-info)
      (del-proxy init)  ;; default-init / foreach-init
      (del-proxy init)  ;; common init
      (del-proxy test)
      (when (node-slot step)
        (del-proxy step)))

    (defproxyprint :before common-init
      (format stream "~&~afor(" indent))

    (defproxyprint :after default-init
      (format stream "; "))

    (defproxyprint :after foreach-init
      (format stream " : "))

    (defproxyprint :after test
      (format stream "; "))

    (defproxyprint :after container
      (format stream ")"))

    (defproxyprint :before step
      (push-info 'for-head))

    (defproxyprint :after step
      (pop-info)
      (format stream ")"))))



;;; ===================
;;; c++ pretty printing
;;; ===================

;;; class 
(with-pp
  (with-proxynodes (attribute)
    
    (defprettymethod :before class
      (push-sign 'first-superclass)
      (if (eql (top-info) 'template)
	  (format stream "~&")
	  (format stream "~&~%"))
      (format stream "~aclass " indent))

    (defprettymethod :after class
      (if (eql (top-sign) 'first-superclass)
          (pop-sign))
      (format stream ";"))

    (defprettymethod :before superclass
      (make-proxy attribute attribute)
      (if (eql (top-sign) 'first-superclass)
	  (progn (pop-sign)
		 (format stream " : "))
	  (format stream ", ")))

    (defproxyprint :after attribute
      (format stream " "))

    (defprettymethod :self access-specifier
      (let ((spec (node-slot specifier)))
    (when spec
      --indent
        (format stream "~&~a~a:" indent spec)
    ++indent)))))

;; constructor
(with-pp
  (with-proxynodes (initializer parameters)
    
    (defprettymethod :before constructor
      (when (node-slot initializer)
	(make-proxy initializer initializer))
      (make-proxy parameter parameters)
      (push-sign 'first-initializer)
      (format stream "~&~%~a" indent))
    
    (defprettymethod :after constructor
      (when (node-slot initializer)
	(del-proxy initializer))
      (del-proxy parameter)
      (when (eql (top-sign) 'first-initializer)
	(pop-sign))
      (when (not (node-slot body))
        (format stream ";")))
    
    (defproxyprint :before parameters
      (format stream "("))

    (defproxyprint :after parameters
      (format stream ")"))
    
    (defproxyprint :before initializer
      (push-info 'initializer)
      (if (eql (top-sign) 'first-initializer)
	  (progn
	    (pop-sign)
	    (format stream "~&~a: " indent))
	  (format stream ", ")))

    (defproxyprint :after initializer
      (pop-info))))

;; destructor
(with-pp
  (with-proxynodes (name)

    (defprettymethod :before destructor
      (format stream "~&~%~a" indent)
      (when (node-slot virtual)
	(format stream "virtual "))
      (when (typep (node-slot name) 'identifier)
	(format stream "~~"))
      (make-proxy name name)
      (push-info 'destructor))

    (defprettymethod :after destructor
      (del-proxy name)
      (when (not (node-slot body))
        (format stream ";")))

    (defproxyprint :after name
      (pop-info)
      (format stream "()"))))
	

(with-pp

  (defprettymethod :before using
    (format stream "~&~ausing " indent))

  (defprettymethod :after using
    (format stream ";~%")))

(with-pp

  (defprettymethod :before using-namespace
    (format stream "~&~ausing namespace " indent))

  (defprettymethod :after using-namespace
    (format stream ";~%")))

(with-pp

  (defprettymethod :before new
    (format stream "~a " (node-slot operator))))

(with-pp

  (defprettymethod :before delete
    (format stream "~&~a~a " indent (node-slot operator)))
  (defprettymethod :after delete
    (format stream ";~%")))
      

(with-pp

   (defprettymethod :before namespace
     (format stream "~&~anamespace " indent)))

(with-pp
  (with-proxynodes (name)
    
    (defprettymethod :before from-namespace
      (make-proxy name name))

    (defprettymethod :after from-namespace
      (del-proxy name))
    
    (defproxyprint :before name
      (format stream "::")
      ;; tilde for destructors,
      ;; info set in destructor prettymethod
      (when (eql (top-info) 'destructor)
	  (format stream "~~")))))

(with-pp
  (with-proxynodes (parameters)

    (defprettymethod :before template
      (push-info 'template)
      (make-proxy parameters parameters)
      (format stream "~&~%~atemplate " indent))

    (defprettymethod :after template
      (pop-info)
      (del-proxy parameters))

    (defproxyprint :before parameters
      (format stream "<"))

    (defproxyprint :after parameters
      (format stream ">"))))

(with-pp
  (with-proxynodes (template arguments)
	  
    (defprettymethod :before instantiate
      (push-info 'template-instantiation)
      (push-sign 'skip-first-template)
      (make-proxy template template)
      (make-proxy arguments arguments))

    (defprettymethod :after instantiate
      (del-proxy template)
      (del-proxy arguments)
      (pop-info)
      (when (eql (top-sign) 'skip-first-template)
	(pop-sign))
      (format stream ">"))
    
    (defproxyprint :after template
      (format stream "<"))

    (defproxyprint :before arguments
      (if (eql (top-sign) 'skip-first-template)
	  (pop-sign)
	  (format stream ", ")))))

(with-pp
  (defprettymethod :before try-block
    (format stream "~&~atry" indent)))


(with-pp
  (with-proxynodes (decl-item)

    (defprettymethod :before catch
      (format stream "~&~acatch (" indent)
      (if (node-slot all)
	  (format stream "..."))
      (make-proxy decl-item decl-item))

    (defproxyprint :after decl-item
      (format stream ")"))

    (defprettymethod :after catch
      (del-proxy decl-item))))


;; Lambda function // quite similar to function-definition
(with-pp
  (with-proxynodes (captures parameters type)

    ;; Begin new line and add proxy-nodes.
    (defprettymethod :before lambda-definition
      (make-proxy parameter parameters)
      (make-proxy capture captures)
      (when (node-slot type)
      	(make-proxy type type))
      ++indent)

    ;; Remove temporary proxy-nodes
    (defprettymethod :after lambda-definition
      (del-proxy parameter)
      (del-proxy capture)
      (when (node-slot type)
      	(del-proxy type))
      --indent)

    ;; Begin capture-list
    (defproxyprint :before captures
      (if (or (eql (top-sign) 'skip-first-funcall)
	      (eql (top-info) 'declaration-item))
	(format stream "[")
	(format stream "~&~a[" indent)))

    ;; Close capture-list
    (defproxyprint :after captures
      (format stream "]"))
    
    ;; Begin parameter-list.
    (defproxyprint :before parameters
      (format stream "("))
    
    ;; Close parameter-list.
    (defproxyprint :after parameters
      (format stream ")")
      (when (slot-value parent 'tail-qualifiers)
	(format stream " ")))

    ;; individual parameters already handled by function-definition
    ;; i.e. parameter-list and paramter

    ;; Print "->"
    (defproxyprint :before type
      (when (not (slot-value parent 'tail-qualifiers))
	(format stream " "))
      (format stream "-> "))))



