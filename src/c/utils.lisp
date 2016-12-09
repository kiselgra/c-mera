;;;; Some helper functions

(in-package :cm-c)

(defun fix-case (parent child)
  "Fix case for dissected symbols.
   Required because of our inverted readtable."
  ;; check every single character's case
  (macrolet ((case-test (test string)
	       `(eval `(and ,@(mapcar (lambda(x) (or (not (both-case-p x))
						     (,test x)))
				      (coerce ,string 'list)))))
	     (special-case (string)
	       `(eval `(and ,@(mapcar (lambda(x) (not (both-case-p x)))
				      (coerce ,string 'list))))))
    (let
	;; parent upper
	((pu (case-test upper-case-p parent))
	 ;; parent lower
	 (pl (case-test lower-case-p parent))
	 ;; child upper
	 (cu (case-test upper-case-p child))
	 ;; child lower
	 (cl (case-test lower-case-p child))
	 ;; child special
	 (cs (special-case child)))
      ;; adjust cases
      (let ((parent
	      ;; fix parent case if root symbol had mixed case
	      (cond
		;; special cases
		((and pu cs) (intern (string-upcase parent)))
		((and pl cs) (intern (string-downcase parent)))
		;; parend upper case
		;; child lower or mixed case
		((or (and pu cl) (and pu (not (or cu cl))))
		 (intern (string-downcase parent)))
		;; parent lower case
		;; child upper or mixed case
		((or (and pl cu) (and pl (not (or cu cl))))
		 (intern (string-upcase parent)))
		;; default
		(t (intern parent))))
	    ;; fix child case if root symbol had mixed case
	    (child
	      (cond
		;; child lower case
		;; parent upper or mixed case
		((or (and pu cl) (and (not (or pu pl)) cl))
		 (intern (string-upcase child)))
		;; child upper case
		;; parent loer or mixed case
		((or (and pl cu) (and (not (or pu pl)) cu))
		 (intern (string-downcase child)))
		;; default
		(t (intern child)))))
	(list parent child)))))
