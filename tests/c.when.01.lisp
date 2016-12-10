(include <stdio.h>)

(function foo ((int x) (int y)) -> void
  (decl ((int a = 0)
	 (int b = 0))
    (when (and (> x y) (< x 10))
      (set a x)
      (set b y))
    (printf "%d %d\\n" a b)))

(function main () -> int
  (foo 4 2)
  (foo 1 2)
  (return 0))

;;## 4 2
;;## 0 0
