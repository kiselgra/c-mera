(in-package :cmu-c++)

(macrolet ((define-cast (command)
	   `(defmacro ,command (&rest T-and-obj)
	      `(funcall (instantiate ,',command ,(butlast T-and-obj)) ,(car (last T-and-obj))))))
  "C++ cast operators"
  (define-cast dynamic-cast)
  (define-cast static-cast)
  (define-cast reinterpret-cast)
  (define-cast const-cast))

(defmacro for-each ((name container &key (iterator (gensym "ITERATOR"))) &body body)
  "Range-based iterator"
  `(for ((auto ,iterator = (funcall (oref ,container begin)))
	 (!= ,iterator (funcall (oref ,container end)))
	 (prefix++ ,iterator))
    (decl ((auto ,name = (dref ,iterator)))
      ,@body)))
