;; after use-variables the symbol no longer maps to itself, but to the symbol i.
(include <stdio.h>)
(use-variables FOO)

(function main ((int argc) (char **argv)) -> int
  (decl ((int FOO = 1))
    (decl ((int i = 2))
      (printf "%d\\n" FOO)
    (return 0))))

;;## 1
