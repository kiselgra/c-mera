(include <iostream>)

(defmacro cout (item)
  `(<< #:std::cout ,item #:std::endl))

(class A ()
  (public
   (function operator[] ((int i)) -> int
     (cout i)
     (return 0))))


(function main () -> int
  (cout 0)               ; 0
  (decl ((A a)
	 (int i = a[1])) ; 1
    (return 0)))

;;## 0
;;## 1
