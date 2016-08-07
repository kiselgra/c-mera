(include <iostream>)
(using-namespace std)
(namespace 'foo
   (typedef int bar)) 
(decl (((from-namespace 'foo 'bar) x 9))
  (function main () -> int
    (<< cout x endl)
    (return 0)))

;;## 9
