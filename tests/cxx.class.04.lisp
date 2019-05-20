(include <stdio.h>)

(class A ()
  (public
    (private
      (protected
        (decl ((int a))))
      (decl ((int b))))
    (decl ((int c))))
  (decl ((int d)))
  (public
    (private
      (protected
        (decl ((int e)))))))

(struct B
  (private
    (decl ((int a))
      (public
        (decl ((int b))))))
  (decl ((int c))))

(struct C
  (private 
    (decl ((int a))))
  (decl ((int b))))

(class D ()
  (struct DD
    (decl ((int a))))
  (decl ((int b)))
  (struct DDD
    (private 
      (decl ((int c)))))
  (decl ((int d)))
  (public 
    (decl ((int e))))
  (decl ((int f))))




(function main () -> int
  (decl ((A a)
		 (B b)
		 (C c)
		 (D d))
		
    (set a.c 1
		 b.c 2
		 c.b 3
		 d.e 4)
		
	(printf "%d\\n" a.c)
	(printf "%d\\n" b.c)
	(printf "%d\\n" c.b)
	(printf "%d\\n" d.e)
	(return 0)))

;;## 1
;;## 2
;;## 3
;;## 4
