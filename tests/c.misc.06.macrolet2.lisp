(defmacro with-bindings (&body body)
  `(macrolet ((foo (x) `(set ,x (+ ,x 1))))
     (progn
     ,@body)))

(function main () -> int
  (decl ((int x = 1))
    (with-bindings
      (foo x)
      (foo x))
    (printf "%d\\n" x))
  (return 0))

;;## 3
