(in-package :cm-glsl)

(with-pp
  (with-proxynodes (normal special)

    (defprettymethod :before layout
      (push-info 'layout)
      (format stream "layout"))

    (defprettymethod :after layout
      (pop-info))

    ;; override specifier item for layout
    (defprettymethod :before specifier
      (if (eql (top-info) 'layout)
	  (progn
	    (push-sign 'skip-first-specifier)
	    (make-proxy specifier special))
	  (make-proxy specifier normal)))

    (defprettymethod :after specifier
      (when (eql (top-sign) 'skip-first-specifier)
	(pop-sign))
      (del-proxy specifier))

    (defproxyprint :after normal
      (format stream " "))

    (defproxyprint :before special
      (if (eql (top-sign) 'skip-first-specifier)
	  (pop-sign)
	  (format stream " ")))))


