(include <iostream>)
(include <typeinfo>)
(using-namespace std)

(class A ()
  (decl ((int a))))

(class B ((public A))
  (decl ((int b))))

(function main () -> int
		  (decl  ((int foo = 0)
				  (const int* bar = (const-cast const int* &foo))
				  (float foo2 = 3.14)
				  (B* foo3 = (new B))
				  (A* foo4 = (dynamic-cast A* foo3)))
				(set (dref (const-cast int* bar)) 1)
				(<< cout foo endl)
				(<< cout (static-cast int foo2) endl)
				(<< cout (oref (typeid foo3) (name)) endl)
				(<< cout (oref (typeid foo4) (name)) endl)
		  (return 0)))

;;## 1
;;## 3
;;## P1B
;;## P1A
