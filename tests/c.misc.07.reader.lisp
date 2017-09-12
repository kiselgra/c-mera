(include <stdio.h>)

(function test1 (#+nil (int a) #-nil (int b)) -> int
		  #+nil
		  (return a)
		  #-nil
		  (return b))

(function test2 (#-nil (int a) #+nil (int b)) -> int
		  #-nil
		  (return a)
		  #+nil
		  (return b))


(function main () -> int
  (printf "%i\\n" (test1 0))
  (printf "%i\\n" (test2 1))
  (return 0))

;;## 0
;;## 1
