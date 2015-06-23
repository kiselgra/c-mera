;;;; Import free symbols normally in cg-user and prepare locked symbols for later import

(cl:in-package :cg-user)

;;; These symbols are mostly (locked) functions in common-lisp.
(cl:defvar *cgen-symbols* '(&& & lazy-or and or not /= *= <= >= -= += != == = > < * / - +
			    unary break return set while if pcast aref targ-of
			    addr-of parameter arith progn macro include cast 
			    oref pref funcall for struct function decl
			    defun defmacro cond when 1+ continue block))

;;; These symbols are needed but locked by lisp.
(cl:defvar *cgen-symbols2* '(array null length min max abs sin cos tan 
			     fabs class 1- vector))

(cl:defparameter cgen::*imported-symbols* (cl:make-hash-table))

(cl:do-external-symbols (cl:symbol :common-lisp)
  ;; Loop over all symbols in common-lisp and load them differently depending on needed symbols for cg-user.
  (cl:cond 
    ;; Store symbol-name and lambda-list in *imported-symbols* hash (definition happens later)".
    ((cl:eval `(cl:find-if #'(cl:lambda (x) (cl:equal (cl:symbol-name x) (cl:symbol-name ',cl:symbol))) *cgen-symbols*))
     (cl:eval `(cl:setf (cl:gethash ',(cl:intern (cl:format cl:nil "~a" cl:symbol) :common-lisp) cgen::*imported-symbols*) 
			  ',(sb-introspect:function-lambda-list cl:symbol))))
    ;; Symbols with package-lock but without function-definition
    ((cl:eval `(cl:find-if #'(cl:lambda (x) (cl:equal (cl:symbol-name x) (cl:symbol-name ',cl:symbol))) *cgen-symbols2*))
     ;; Do nothing, skip import..
     )
    ;; Import symbol normally (with package-lock)
    (cl:t (cl:import cl:symbol))))

;; Store additional symbols in the *imported-symbols* hash
(cl:setf (cl:gethash (cl:intern (cl:format cl:nil "BREAK") :common-lisp) cgen::*imported-symbols*)
	 '(cl:&rest arguments))

(cl:setf (cl:gethash (cl:intern (cl:format cl:nil "RETURN") :common-lisp) cgen::*imported-symbols*)
	 '(cl:&optional value))

;; Remove special symbols from *imported-symbols*-hash, which will be defined manually.
(cl:remhash 'common-lisp:defmacro cgen::*imported-symbols*)
(cl:remhash 'common-lisp:defun cgen::*imported-symbols*)
(cl:remhash 'common-lisp:cond cgen::*imported-symbols*)
(cl:remhash 'common-lisp:when cgen::*imported-symbols*)
(cl:remhash 'common-lisp:1+ cgen::*imported-symbols*)
