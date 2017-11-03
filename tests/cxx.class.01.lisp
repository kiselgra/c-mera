(include <iostream>)

(defmacro cout (item)
  `(<< #:std::cout ,item #:std::endl))

(class A ()
  (public
   (constructor () nil)
   (destructor nil)
   (function test () pure -> (void))))

(class B ((public A))
  (public
   (function test () -> (virtual void)
     (cout 1))))

(class C ((public B))
  (public
   (function test () -> void
     (cout 2))))

;; ----

(class D ()
  (public
    (function test2 () virtual -> void
      (cout 1))))

(class E ((public D))
  (public
    (function test2 () -> void
      (cout 3))))

;; ----

(class F ()
  (public
    (function test3 () pure -> void
      (cout 1))))

(class G ((public F))
  (public
    (function test3 () -> void
      (cout 4))))

;; ----

(function main () -> int
  (cout 0)                     ; 0
  (decl ((B* b1 = (new (B)))
	 (B* b2 = (new (C)))
	 (D* d  = (new (E)))
	 (F* f  = (new (G))))
    (b1->test)                 ; 1
    (b2->test)                 ; 2
    (d->test2)                 ; 3
    (f->test3)                 ; 4
    (delete b1)
    (delete b2)
    (delete d)
    (delete f)
    (return 0)))

;;## 0
;;## 1
;;## 2
;;## 3
;;## 4
