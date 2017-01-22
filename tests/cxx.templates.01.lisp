(include <iostream>)
(include <string>)
(include <vector>)
(using-namespace std)

(function foo () -> (const (instantiate vector (string)) (comment "&" :prefix "")))
(function foo () -> (const (instantiate vector (string)) &))
(function foo () -> (const (instantiate vector (string)) (addr-of nil)))

(function main () -> int
  (<< cout 0 endl)
  (return 0))

;;## 0
