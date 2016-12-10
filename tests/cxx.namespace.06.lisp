(include <iostream>)
(decl ((#:std:string x = "fooo")
       (int y = #:std:string:npos))
  (function main () -> int
    (<< #:std:cout 0 #:std:endl)
    (return 0)))

;;## 0
