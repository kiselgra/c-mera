(class foo ()
  (public
    (decl ((int a))))
  (decl ((int b)))) ;; addendum to #62: missing access specifier for outer layer

(function main () -> int
  (decl ((foo f))
    (set f.b 0)))

;;## <compile failure>
