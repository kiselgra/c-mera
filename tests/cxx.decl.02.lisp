(include <iostream>)
(include <float.h>)

(comment "#define FOO 2" :prefix "")

(function main () -> int
  (decl ((int arr[3] {1 1 1})
	 (int brr[3] {-1 -1 -1})
	 (int crr[3] {FOO FOO FOO})
	 (int drr[3] {-FOO -FOO -FOO})
	 (int err[3] {arr[1]}))
    (printf "%d %d\\n" arr[0] brr[0])
    (printf "%d %d\\n" crr[0] drr[0])
    (printf "%d %d\\n" drr[2] err[0])
    (return 0)))

;;## 1 -1
;;## 2 -2
;;## -2 1
