(include <stdio.h>)
(function foo ((int x)) -> void (return))
(function foo2 () -> void (return))

(decl ((void (fpointer nam0 ((int))) = foo)
       (void (fpointer nam1 ()) = foo2)
       (void (fpointer nam2 ((unsigned int ui))))
       (void (fpointer nam2 (int int))) ; just a suggestion
       ))

(function main () -> int (printf "0\\n") (return 0))

;;## 0
