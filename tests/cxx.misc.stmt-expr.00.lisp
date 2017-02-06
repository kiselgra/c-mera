(include <iostream>)
(using-namespace std)

(function main () -> int
  (<< cout "foo" endl)
  (if 1
    (<< cout 0 endl))
  (return 0))

;;## foo
;;## 0
