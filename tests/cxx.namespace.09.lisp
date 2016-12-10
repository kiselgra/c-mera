(include <iostream>)
(include <string>)

(function test1 ((const #:std:string &x)) -> void
  (<< #:std:cout x #:std:endl))

(function test2 ((const #:std:string& x)) -> void
  (<< #:std:cout x #:std:endl))

(function main () -> int
  (decl ((#:std:string foo = "foo"))
    (test1 foo)
    (test2 foo)
    (return 0)))

;;## foo
;;## foo
