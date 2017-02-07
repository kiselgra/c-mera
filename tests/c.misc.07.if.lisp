(include <stdio.h>)

(function test ((int i)(int k)) -> int
  (cond ((== i 1)
		 (return 1))
		((== i 2)
		 (printf "%i\\n" 2)
		 (return 2))
		((== i 3)
		 (progn (return 3)))
		((== i 4)
		 (progn (progn (progn (progn (return 4))))))
		((== i 5)
		 (progn (progn (progn (progn (printf "%i\\n" 5)
					     (return 5))))))
		((and (> i 5)
			  (< i 9))
		 (if (> i 6)
		   (if (> i 7)
			 (return 8))
		   (return 6))
		 (if (== i 7)
		   (return 7)))

		((== i 9)
		 (if (== i 9)
		   (return 9)))
		(t
		  (return (* i k)))))






(function main () -> int
  (printf "%i\\n" (test 1 -1))
  (printf "%i\\n" (test 2 -1))
  (printf "%i\\n" (test 3 -1))
  (printf "%i\\n" (test 4 -1))
  (printf "%i\\n" (test 5 -1))
  (printf "%i\\n" (test 6 -1))
  (printf "%i\\n" (test 7 -1))
  (printf "%i\\n" (test 8 -1))
  (printf "%i\\n" (test 9 -1))
  (printf "%i\\n" (test 10 -1))
  (return 0))

;;## 1
;;## 2
;;## 2
;;## 3
;;## 4
;;## 5
;;## 5
;;## 6
;;## 7
;;## 8
;;## 9
;;## -10
