(include <stdio.h>)

(function test ((int x)) -> int
  (decl ((int i = 0))
    (switch x
      ((1 2 3)
       (set i 1)
       (break))
      (4 (set i 4))
	  (5
       (set i 5)
       (break))
	  ((6 7 8)
       (set i 6)
       (break))
      (t (set i -1)))
	(return i)))

(function main () -> int
  (printf "%i\\n" (test 1))
  (printf "%i\\n" (test 2))
  (printf "%i\\n" (test 3))
  (printf "%i\\n" (test 4))
  (printf "%i\\n" (test 5))
  (printf "%i\\n" (test 6))
  (printf "%i\\n" (test 7))
  (printf "%i\\n" (test 8))
  (printf "%i\\n" (test 9))
  (printf "%i\\n" (test 10))
  (return 0))

;;## 1
;;## 1
;;## 1
;;## 5
;;## 5
;;## 6
;;## 6
;;## 6
;;## -1
;;## -1
