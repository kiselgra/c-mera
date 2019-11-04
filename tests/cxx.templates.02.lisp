(include <iostream>)
(include <string>)
(using-namespace std)

(template ((typename T) (typename T2))
  (function foo ((T a) (T2 b)) -> T 
    (return (+  a((instantiate static_cast (float)) b)))))


(function main () -> int
  (<< cout (foo 1.1f 1) endl)
  (return 0))

;;## 2.1
