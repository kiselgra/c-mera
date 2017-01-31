(include <iostream>)
(include <string>)
(include <vector>)
(using-namespace std)

(function foo () -> (const (reference-type (instantiate vector (string)))))

(function main () -> int
  (<< cout 0 endl)
  (return 0))

;;## 0
