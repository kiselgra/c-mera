(include <stdio.h>)

(decl ((const char* args[2][3] = (clist (clist "f" "o" "o")
                                        (clist "b" "a" "r")))))

(function main () -> int (printf "0\\n") (return 0))

;;## 0
