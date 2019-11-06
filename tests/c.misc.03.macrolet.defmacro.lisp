;; shows two bugs:
;; 1. printf is no known function in the quoted expression (but it is outside)
;; 2. only the last statement of the macrolet's body is found in the output

;;(include <stdio.h>)
;;(function main () -> int
;;  (printf "test\\n")
;;  (macrolet ((foo (x) `(printf "foo: %d\\n" ,x)))
;;     (foo 1)
;;    (foo 2)
;;    (foo 3))
;;  (return 0))

;; Regarding 1: A global redefinition of macrolet (and defmacrr) might break lisp itsef.
;; Therefore, we propose a user version of macrolet and defmacro.
;; As an alternative, 'funcall' can be used to circument the issue

;; Regarding 2: That is the intendet behaviour of Lisp's macrolet
;; generating multiple statements reqquires 'progn'.

(defmacro c-defmacro (name lambda-list &body body)
  `(defmacro ,name ,lambda-list `(cmu-c:progn ,,@body)))

(defmacro c-macrolet (definitions &rest body)
  `(macrolet ,(loop for def in definitions collect
	       `(,(first def) ,(second def) `(cmu-c:progn ,,(third def))))
     (cmu-c:progn ,@body)))


(c-defmacro bar (x) `(printf "bar: %d\\n" ,x))

(include <stdio.h>)
(function main () -> int
  (printf "test\\n")
  (c-macrolet ((foo (x) `(printf "foo: %d\\n" ,x)))
    (foo 1)
    (foo 2)
    (foo 3)
    (bar 4))
  (macrolet ((baz (x) `(funcall printf "baz: %d\\n", x)))
    (baz 5))
  (return 0))

;;## test
;;## foo: 1
;;## foo: 2
;;## foo: 3
;;## bar: 4
;;## baz: 5
