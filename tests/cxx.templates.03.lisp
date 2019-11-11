(include <iostream>)
(include <vector>)
(using-namespace std)

(template ((typename foo))
  (class test () 
    (public
      (decl (((instantiate vector (int)) veci))))))

(instantiate-explicit (class (instantiate test (int)) ()))


(function main () -> int
  (decl (((instantiate test (int)) foo))
    (foo.veci.push_back 1)
    (<< cout (foo.veci.back) endl)
    (return 0)))

;;## 1
