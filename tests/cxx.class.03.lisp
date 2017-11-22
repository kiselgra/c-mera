(include <iostream>)
(using-namespace std)

(class foo1 ()
  (public
    (destructor
      (<< cout "~foo1" endl))))

(class foo2 ()
  (public
    (destructor virtual
      (<< cout "~foo2" endl))))

(class bar1 ((public foo1))
  (public
    (destructor (<< cout "~bar1" endl))))

(class bar2 ((public foo2))
  (public
    (destructor (<< cout "~bar2" endl))))

(function main () -> int
  (decl ((foo1 *f1 = (new bar1))
	 (foo2 *f2 = (new bar2)))
    (delete f1)
    (delete f2))
  (return 0))

;;## ~foo1
;;## ~bar2
;;## ~foo2
