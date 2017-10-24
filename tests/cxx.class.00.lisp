(include <iostream>)

(class A ()
  (public
    (constructor ())
    (destructor)))

(function #:A::A () -> nil
  nil)

(function #:A::~A () -> nil
  nil)

(function main () -> int (<< #:std:cout 0 #:std:endl) (return 0))

;;## 0
