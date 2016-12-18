(include <iostream>)
(using-namespace std)

(struct Foo
  (function bar () -> int (return 29081997)))

(function main () -> int
  (decl ((Foo foo)
	 (int bar = (foo.bar)))
    (<< cout bar endl)
    (return 0)))

;;## 29081997
