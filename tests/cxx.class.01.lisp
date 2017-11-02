(include <iostream>)

(defmacro cout (item)
  `(<< #:std::cout ,item #:std::endl))

(class A ()
  (public
   (constructor () nil)
   (destructor nil)
   (function test () pure -> (virtual void))))

(class B ((public A))
  (public
   (function test () -> (virtual void)
     (cout 1))))

(class C ((public B))
  (public
   (function test () -> void
     (cout 2))))


(function main () -> int
  (cout 0)                     ; 0
  (decl ((B* b1 = (new (B)))
	 (B* b2 = (new (C))))
    (b1->test)                  ; 1
    (b2->test)                  ; 2
    (delete b1)
    (delete b2)
    (return 0)))

;;## 0
;;## 1
;;## 2
