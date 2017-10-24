(include <stdio.h>)

(function main () -> int
  
  (goto two)

  (label zero)
  (printf "0\\n")
  (goto four)
  
  (label (cintern "one"))
  (printf "1\\n")
  (goto zero)
  
  (label (cintern (format nil "~a" 'two)))
  (printf "2\\n")
  (goto one)

  (label three-and-a-half)
  (printf "3.5\\n")
  (return 0)

  (label three)
  (printf "3\\n")
  (goto three-and-a-half)

  (label (cintern #.(format nil "~a~a" 'fo 'ur)))
  (printf "4\\n")
  (goto three))

;;## 2
;;## 1
;;## 0
;;## 4
;;## 3
;;## 3.5
