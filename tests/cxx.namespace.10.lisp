(include <iostream>)
(include <string>)

(function test () -> void
  (<< #:std:cout "global" #:std:endl))

(namespace local
  (namespace nested
    (function test () -> void
      (<< #:std:cout "nested" #:std:endl)))
  (function test () -> void
    (<< #:std:cout "local" #:std:endl))

  (function foo () -> void
    ;; current namespace
    (test)
    (funcall (from-namespace local test))

    ;; global scope
    (#::test)
    (#:nil:test)
    (funcall (from-namespace nil test))

    ;; nested namespace
    (#:nested:test)
    (#:local:nested:test)
    (funcall (from-namespace local nested test))))

(function main () -> int
  (#:local:foo)
  (return 0))

;;## local
;;## local
;;## global
;;## global
;;## global
;;## nested
;;## nested
;;## nested
