(in-package :cm-opencl)

;;; pretty print override/restore

;;; copy from ast-pretty.lisp
;;; restores original behaviour
;;; Declaration item
;;; Handle declaration assignment.
(with-pp
  (with-proxynodes (value)

    (defprettymethod :before declaration-item
      (make-proxy value value))

    (defprettymethod :after declaration-item
      (del-proxy value))

    (defproxyprint :before value
      (if (slot-value item 'proxy-subnode)
	  (format stream " = ")))))

;;; copy from ast-pretty.lisp
;;; restores original behavious
;;; C-list / vectors
(with-pp
  (with-proxynodes (list-item)

    (defprettymethod :before clist
      (make-proxy items list-item)
      (push-sign 'skip-first-list)
      (format stream "{ "))

    (defprettymethod :after clist
      (when (eql (top-sign) 'skip-first-list)
	(pop-sign))
      (del-proxy items)
      (format stream " }"))

    (defproxyprint :before list-item
      (if (eql (top-sign) 'skip-first-list)
	  (pop-sign)
	  (format stream ", ")))))


;;; opencl vector initialization

(with-pp
  (with-proxynodes (parameter)

    (defprettymethod :before vector-initialization
      (make-proxy parameter parameter)
      (push-sign 'skip-first-vector-init)
      (format stream "(~a)(" (node-slot tag)))
      
    (defprettymethod :after vector-initialization
      (when (eql (top-sign) 'skip-first-vector-init)
	(pop-sign))
	(del-proxy parameter)
      (format stream ")"))
    
    (defproxyprint :before parameter
      (if (eql (top-sign) 'skip-first-vector-init)
	  (pop-sign)
	  (format stream ", ")))))
