(include <iostream>)

(defmacro cout (item)
  `(<< #:std::cout ,item #:std::endl))

(function main () -> int
  (for ((int i = 0) (< i 10) ++i))
  (cout "should appear only once.")
  (decl ((int i = 0))
    (for (() (< i 10) ++i)
      (cout i)))
  (for ((int i = 0) (< i 10) i++)
    (cout i))
  (decl ((int arr[] = (clist 1 2 3 4)))
    (for ((int elem) arr)
      (cout elem))
    (for ((const int& elem) arr)
      (cout elem)))
  (decl ((int arr[4][4] = (clist (clist 0)
                                 (clist 0)
                                 (clist 4 3 2 1)
                                 (clist 0))))
    (for ((const int& elem) arr[2])
      (cout elem)))
  (return 0))

;;## should appear only once.
;;## 0
;;## 1
;;## 2
;;## 3
;;## 4
;;## 5
;;## 6
;;## 7
;;## 8
;;## 9
;;## 0
;;## 1
;;## 2
;;## 3
;;## 4
;;## 5
;;## 6
;;## 7
;;## 8
;;## 9
;;## 1
;;## 2
;;## 3
;;## 4
;;## 1
;;## 2
;;## 3
;;## 4
;;## 4
;;## 3
;;## 2
;;## 1
