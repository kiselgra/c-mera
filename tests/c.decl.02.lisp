(include <stdio.h>)

(function main () -> int 
  (decl ((unsigned int x = 0)
	 (unsigned int y = (cast unsigned int x))))
  (printf "0\\n") (return 0))

;;## 0
