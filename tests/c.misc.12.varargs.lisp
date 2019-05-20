(include <stdio.h>)
(include <stdarg.h>)

(function foo ((int a) (int b) &rest) -> int
  (decl ((va_list ap))
    (va_start ap b)
    (for ((int i = 0) (< i b) ++i)
      (printf "%d\\n" (va_arg ap int)))
    (va_end ap)
    (return a)))

(function main () -> int
  (decl ((int a = (foo 0 4 11 22 33 44)))
    (return a)))

;;## 11
;;## 22
;;## 33
;;## 44
