(include <stdio.h>)

(defmacro foo (&body body)
  (multiple-value-bind (spec type name init)
      (cm-cxx:decompose-declaration body)
    `(funcall printf ,(format nil "[~a]  [~a]  [~a]  [~a]\\n" spec type name init))))

(function main () -> int
  (foo int i)
  (foo unsigned long int *p = 0)
  (foo int arr[] = (clist 1 2 3))
  (foo int arr[] { 1 2 3 })
  (return 0))

;;## [nil]  [int]  [i]  [nil]
;;## [(unsigned long)]  [int]  [(targ-of (quoty p))]  [0]
;;## [nil]  [int]  [(aref (quoty arr))]  [(clist 1 2 3)]
;;## [nil]  [int]  [(aref (quoty arr))]  [(1 2 3)]

