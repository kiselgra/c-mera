(include <iostream>)
(using-namespace std)
(namespace 'foo
  (namespace 'fuu
    (namespace 'foh
     (typedef int bar))))
(decl (((from-namespace 'foo 'fuu 'foh 'bar) x 9))
  (function main () -> int
    (<< cout x endl)
    (return 0)))

;;## 9
