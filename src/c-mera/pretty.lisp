(in-package :c-mera)

;;; Pretty printing of leaf nodes:
;;; strings, chars, nums, identifiers
(with-pp
  (defprettymethod :self leaf
    (loop for i in values do
      (let ((val (slot-value item i)))
	(when val
	  (cond 
	    ((stringp val)
	     (format stream "\"~a\"" val))
	    ((characterp val)
	     (cond
	       ((eql val #\tab)
		(format stream "'\\t'"))
	       ((or (eql val #\nul) (eql val #\null))
		(format stream "'\\0'"))
	       ((eql val #\return)
		(format stream "'\\r'"))
	       ((eql val #\newline)
		(format stream "'\\n'"))
	       ((eql val #\')
		(format stream "'\\''"))
	       (t (format stream "'~a'" val))))
	    ((floatp val) (format stream "~a"
				  (substitute #\e #\d
					      (format nil "~,8e" val))))
	    (t (format stream "~a" val)))
	  )))))
