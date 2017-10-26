(include <stdio.h>)

;; simple function returning int
(function foo-fn () -> int (return 0))
 
;; typedef for a function returning int, taking no arguments
(typedef int (fpointer foo-fn-ptr ()))

;; function that takes one (useless) argument and returns a function such as foo-fn.
(function bar-fn1 ((int x)) -> foo-fn-ptr (return foo-fn))

;; function that takes two (useless) arguments and returns a function such as foo-fn.
(function bar-fn2 ((int x) (int y)) -> foo-fn-ptr (return foo-fn))

(function main ((int argc) (char **argv)) -> int
(decl ((int x = 0)
       (int y = 0)
       (int a = (funcall (funcall bar-fn1 x)))
       (int b = (funcall (funcall bar-fn2 x y)))))
  (printf "0\\n")
  (return 0))

;;## 0
