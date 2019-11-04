;; shows two bugs:
;; 1. printf is no known function in the quoted expression (but it is outside)
;; 2. only the last statement of the macrolet's body is found in the output
;; Regarding 2: That is the intendet behaviour of macrolet
;; generating multiple statements reqquires progn

(include <stdio.h>)
(function main () -> int
  (printf "test\\n")
  (macrolet ((foo (x) `(printf "foo: %d\\n" ,x)))
    (progn
      (foo 1)
      (foo 2)
      (foo 3)))
  (return 0))

;;## test
;;## foo: 1
;;## foo: 2
;;## foo: 3
