(include <stdio.h>)

(function foo () -> void
  (printf "1\\n"))

(function foo2 ((int i)) -> void
  (printf "%d\\n" i))

(function foo3 ((unsigned int i) (unsigned int k)) -> void
  (printf "%u\\n%u\\n" i k))

(function main () -> int
  (printf "0\\n")

  (decl ((void (fpointer fp1 ()) = foo)
	 (void (fpointer fp2 ((int))) = foo2)
	 (void (fpointer fp3 ((int i))) = foo2)
	 (void (fpointer fp4 ((unsigned int) (unsigned int))) = foo3)
	 (void (fpointer fp5 ((unsigned int i) (unsigned int k))) = foo3))
    (fp1)
    (fp2 2)
    (fp3 3)
    (fp4 4 5)
    (fp5 6 7))

  (return 0))

;;## 0
;;## 1
;;## 2
;;## 3
;;## 4
;;## 5
;;## 6
;;## 7
