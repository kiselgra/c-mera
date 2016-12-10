(include <stdio.h>)

(function main () -> int
  (decl ((int x = 10))
    (printf "%d\\n" +x)
    (printf "%d\\n" -x))
  (return 0))

;;## 10
;;## -10
