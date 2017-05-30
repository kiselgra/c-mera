(in-package :c-mera)

(defparameter *version* (asdf:component-version (asdf:find-system :c-mera)))
(defparameter *generator* :undefined)

(defun print-version ()
  (format t "~a~%" *version*))
