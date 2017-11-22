(include <iostream>)
(include <stdexcept>)
(using-namespace std)

(function bar1 () -> int
  (throw 1))

(function bar2 () -> int
  (throw (logic_error "not logical")))

(function bar3 () -> int
  (throw (runtime_error "error")))

(function bar4 () -> int
  (return 123))

(function bar5 () -> int
  (throw 0.0f))

(typedef int (fpointer fn ()))

(function foo ((fn f)) -> int
  (catching (((int i)
	      (<< cout "caught int: " i endl))
	     ((runtime_error &e)
	      (<< cout "runtime error: " (e.what) endl))
	     ((exception &e)
	      (<< cout "base exception: " (e.what) endl))
	     (t
	       (<< cout "whatever!" endl)))
    (decl ((int got = (f)))
      (<< cout "got value: " got endl)
      (return got))))

(function main () -> int
  (foo bar1)
  (foo bar2)
  (foo bar3)
  (foo bar4)
  (foo bar5)
  (return 0))

;;## caught int: 1
;;## base exception: not logical
;;## runtime error: error
;;## got value: 123
;;## whatever!
