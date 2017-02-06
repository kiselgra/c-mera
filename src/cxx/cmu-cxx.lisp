(in-package :cmu-c++)

(macrolet ((define-cast (command)
	   `(defmacro ,command (&rest T-and-obj)
	      `(funcall (instantiate ,',command ,(butlast T-and-obj)) ,(car (last T-and-obj))))))
  "C++ cast operators"
  (define-cast dynamic-cast)
  (define-cast static-cast)
  (define-cast reinterpret-cast)
  (define-cast const-cast))
