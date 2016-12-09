(in-package :cm-cuda)

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
