(include <iostream>)

(namespace foo-bar
  (decl ((int x-y = 0)))
  (function bla-blub ((int x)) -> int (return 0)))

(namespace foo_bar
  (decl ((int x_y = 0)))
  (function bla_blub ((int x)) -> int (return 0)))

(decl ((int x = #:foo-bar:x-y)
       (int y = (#:foo-bar:bla-blub x))
       (int z = (funcall #:foo-bar:bla-blub #:foo-bar:x-y)))
  (function foo () -> int
    (<< #:std:cout x y z #:std:endl)
    (return (#:foo-bar:bla-blub #:foo_bar:x_y))))

(decl ((int xx = #:foo_bar:x_y)
       (int yy = (#:foo_bar:bla_blub xx))
       (int zz = (funcall #:foo_bar:bla_blub #:foo_bar:x_y)))
  (function main () -> int
    (<< #:std:cout xx yy zz #:std:endl)
    (return (foo))))



;;## 000
;;## 000
