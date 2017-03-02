(include <stdio.h>)

(function test ((int i)) -> int
  (cond ((== i 0))
		((== i 1) (comment "do nothing"))
		((== i 2) (return 2))
		((== i 3) (comment "do nohting")))

  (comment "first block")


  (if (== i 4) 
	  (return 4)
	  (comment "do nothing"))

  (comment "second block")

  (if (!= i 5)
	  (comment "do noghting")
	  (return 5))

  (return 0))

(function main () -> int
  (printf "%i\\n" (test 0 ))
  (printf "%i\\n" (test 1 ))
  (printf "%i\\n" (test 2 ))
  (printf "%i\\n" (test 3 ))
  (printf "%i\\n" (test 4 ))
  (printf "%i\\n" (test 5 ))
  (return 0))

;;## 0
;;## 0
;;## 2
;;## 0
;;## 4
;;## 5
