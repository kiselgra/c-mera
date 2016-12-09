(in-package :cm-cuda)

;;; copy from c pretty.lisp
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
      (push-sign 'skip-first-clist)
      (format stream "{ "))

    (defprettymethod :after clist
      (del-proxy items)
      (when (eql (top-sign) 'skip-first-clist)
	(pop-sign))
      (format stream " }"))

    (defproxyprint :before list-item
      (if (eql (top-sign) 'skip-first-clist)
	  (pop-sign)
	  (format stream ", ")))))

;;; ========================
;;;   cuda pretty printing
;;; =========================

(with-pp
  (with-proxynodes (arrow-bracket comma)

    (defprettymethod :before cuda-funcall
      (make-proxy blocks arrow-bracket)
      (make-proxy threads comma)
      (when (node-slot shared)
	(make-proxy shared comma)))

    (defprettymethod :after cuda-funcall
      (del-proxy blocks)
      (del-proxy threads)
      (when (node-slot shared)
	(del-proxy shared))
      (format stream ">>>"))

    (defproxyprint :before arrow-bracket
      (format stream "<<<"))

    (defproxyprint :before comma
      (format stream ", "))))


(with-pp
  (with-proxynodes (size)

    (defprettymethod :before cuda-alignment
      (make-proxy size size)
      (format stream "__align__("))

    (defprettymethod :after cuda-alignment
      (del-proxy size))

    (defproxyprint :after size
      (format stream ") "))))
