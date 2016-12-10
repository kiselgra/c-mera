(include <stdio.h>)

(decl ((int *arr1 = (new (array int 100)))
       (unsigned int *arr2 = (new (array (unsigned int) 100)))))

(function main () -> int (printf "0\\n") (return 0))

;;## 0
