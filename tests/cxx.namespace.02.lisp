(include <iostream>)
(using-namespace std)
(namespace 'foo
  (typedef int bar))
(decl (((from-namespace 'foo 'bar) x = 9))
  (function test (((from-namespace 'foo 'bar) y)) -> int
    (return y))
  (function main () -> int
    (<< cout (test x) endl)
    (return 0)))

;;## 9
