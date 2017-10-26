(include <stdio.h>)

(function test ((int test)) -> int
  (decl ((int i = 0))
    (if test
	(progn (set))
	(progn (set)))

    (if test
	(progn (set i 1))
	(progn))

    (if test
	(progn (set))
	(progn (set i 2)))

    (return i)))


(function main () -> int
  (printf "0\\n")
  (printf "%i\\n" (test 1))
  (printf "%i\\n" (test 0))
  (return 0))

;;## 0
;;## 1
;;## 2
