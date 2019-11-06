(include <stdio.h>)


(function main () -> int
  (decl ((int a-b)
	 (int a*b)
	 (int a~b)
	 (int 4a)
	 (int 5a))
    (set a-b 1
	 a_b 1
	 a*b 2
	 a~b 3
	 4a 4
	 5a 5)

    (decl ((int a-b)
  	 (int a*b)
  	 (int a~b)
  	 (int 4a)
  	 (int 5a))
      (set a-b 5
  	 a_b 5
  	 a*b 4
  	 a~b 3
  	 4a 2
  	 5a 1)
      (printf "%i\\n" a-b)
      (printf "%i\\n" a_b)
      (printf "%i\\n" a*b)
      (printf "%i\\n" a~b)
      (printf "%i\\n" 4a)
      (printf "%i\\n" 5a))
    
    (printf "%i\\n" a-b)
    (printf "%i\\n" a_b)
    (printf "%i\\n" a*b)
    (printf "%i\\n" a~b)
    (printf "%i\\n" 4a)
    (printf "%i\\n" 5a)
  (return 0)))

;;## 5
;;## 5
;;## 4
;;## 3
;;## 2
;;## 1
;;## 1
;;## 1
;;## 2
;;## 3
;;## 4
;;## 5
