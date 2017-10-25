(cpp include <stdio.h>)
(cpp ifndef MY_H)
(cpp define MY_H)

;; not the best example, since non-standard
(pragma once)

(function main ((int argc) (char **argv)) -> int
  (printf "0\\n")
  (return 0))

(cpp endif)

;;## 0
