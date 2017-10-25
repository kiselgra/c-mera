(include <iostream>)

(defmacro cout (item)
  `(<< #:std::cout ,item #:std::endl))

;; constructor/desctructor mactolet within class
(class A ()
  (private 
   (decl ((bool switch1)
	  (bool switch2))))
  (public
   (constructor ()
     (set switch1 true
	  switch2 false)
     (cout 10))

   (constructor ((bool in)) :init ((switch1 in) (switch2 false))
     (cout 11))

   (constructor ((bool in) (bool out)) :init ((switch1 in) (switch2 out))
     (cout 12))

   (destructor
     (if (and switch1 switch2)
	 (cout 21)
	 (cout 20)))))

;; costructor/destructor macros with explicit name
(class B ()
  (public
   (constructor ())
   (destructor)))

(constructor #:B::B ()
  (cout 30))

(destructor #:B::B
  (cout 31))


;; quoty tests
(defmacro className (name)
  `(cintern (format nil "~a" ',name)))

(class (className foobar) ()
 (public
  (constructor () (cout 40))
  (destructor (cout 41))))

(defparameter *foo* (className bar))
(class *foo* ()
  (public
   (constructor () (cout 50))
   (destructor (cout 51))))




(function main () -> int
  (<< #:std:cout 0 #:std:endl)           ; 0
  
  (decl ((A* a1 = (new (A)))             ; 10
	 (A* a2 = (new (A true)))        ; 11
	 (A* a3 = (new (A false)))       ; 11
	 (A* a4 = (new (A true true))))  ; 12
    (delete a1)                          ; 20
    (delete a2)                          ; 20
    (delete a3)                          ; 20
    (delete a4))                         ; 21
  
  (decl ((B b1[3])                       ; 30,30,30
	 (B* b2 = (new B[2])))           ; 30,30
    (delete[] b2))                       ; 31,31

  ;; quoty tests
  (decl (((className foobar) *fb1 =
	    (new ((className foobar))))) ; 40
    (delete fb1))                        ; 41

  (let ((foo *foo*))
    (decl ((foo *fb2 =
	     (new (foo))))                ; 50
      (delete fb2)))                      ; 51
  
  (return 0))                            ; 31, 31, 31


;;## 0
;;## 10
;;## 11
;;## 11
;;## 12
;;## 20
;;## 20
;;## 20
;;## 21
;;## 30
;;## 30
;;## 30
;;## 30
;;## 30
;;## 31
;;## 31
;;## 40
;;## 41
;;## 50
;;## 51
;;## 31
;;## 31
;;## 31
