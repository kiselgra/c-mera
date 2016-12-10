(include <iostream>)

(namespace glm
  (decl ((int value-ptr))))
(decl ((int x = #:glm:value-ptr)))
(function main () -> int
  (<< #:std:cout 0 #:std:endl)
  (return 0))

;;## 0
