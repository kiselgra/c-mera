(include <stdio.h>)
(function main () -> int
  (for ((int i = 0) (< i 10) (set i (+ i 1)))
    (printf "should appear only once.\\n")
    (return 0)))

;;## should appear only once.
