(include <iostream>)
(include <array>)
(include <algorithm>)

(using-namespace std)

(defmacro cout (item)
  `(<< cout ,item endl))

(defmacro arr ()
  `(instantiate array (int) (3)))

(defmacro vec-print (vec)
  `(for ((auto it = (funcall (oref ,vec begin)))
	 (!= it (funcall (oref ,vec end)))
	 ++it)
    (cout *it)))


(class  bar ()
  (public 
    (decl ((int i))
      (constructor ((int i)) (= this->i i))
      (function test ((int i)) -> int
        (decl ((auto l = (lambda-function (this i) () (progn
          					      (set this->i i)
          					      (return (+ i 1))))))
          (return (l)))))))


(function main () -> int
  (decl ((int i = 1)
	 (int k = 2)
	 (auto l = (lambda-function (=)  ;; capture
				    ((const int& a) (const int& b)) ;; parameter
				    mutable ;; qualifier
				    -> ;; sentinel
				    (const int) ;; return type
				    (progn
				      ++i
				      ++k
				      (return (* i k a b))))) ;; body
	 (auto ll = (lambda-function (&) ((const int & a)(const int& b)) -> int
				     (progn ++i ++k (return (l a b)))))
	 (auto lll = (lambda-function (i k) () -> int (return (+ i k)))))
    (cout "init")
    (cout i)
    (cout k)
    (cout "copy capture")
    (cout (l 2 3))
    (cout i)
    (cout k)
    (cout "ref capture")
    (cout (ll 2 3))
    (cout i)
    (cout k)
    (cout  "pre modification copy capture")
    (cout (lll))
    (cout "curr i and k")
    (cout i)
    (cout k))


  (cout "this capture")
  (decl ((bar (b 10)))
   (cout b.i)
   (cout (b.test 20))
   (cout b.i))

  (cout "no capture")
  (decl (((arr) foo = { 300 100 200 }))
    (funcall sort (foo.begin)
		  (foo.end)
		  (lambda-function () ((const int& a)(const int& b)) (return (< a  b))))
    (vec-print foo))
    
  (return 0))

;;## init
;;## 1
;;## 2
;;## copy capture
;;## 36
;;## 1
;;## 2
;;## ref capture
;;## 72
;;## 2
;;## 3
;;## pre modification copy capture
;;## 3
;;## curr i and k
;;## 2
;;## 3
;;## this capture
;;## 10
;;## 21
;;## 20
;;## no capture
;;## 100
;;## 200
;;## 300
