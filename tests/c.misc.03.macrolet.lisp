;; shows two bugs:
;; 1. printf is no known function in the quoted expression (but it is outside)
;; 2. only the last statement of the macrolet's body is found in the output

(include <stdio.h>)
(function main () -> int
  (printf "test")
  (macrolet ((foo (x) `(funcall printf "foo: %d\\n" ,x)))
    (foo 1)
    (foo 2)
    (foo 3))
  (return 0))

;;## test
;;## 1
;;## 2
;;## 3
