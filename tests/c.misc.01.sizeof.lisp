;; broken sizeof
(include <stdio.h>)

(function main ((int argc) (char **argv)) -> int
  (decl ((int s = (sizeof unsigned int)))
    (printf "0\\n")
    (return 0)))

;;## 0
