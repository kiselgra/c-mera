(in-package :cm-opencl)

(defmacro opencl-syntax (tags lambda-list &body body)
  `(defsyntax ,tags (:cmu-opencl) ,lambda-list ,@body))

(let ((vectors (loop for i in '(char uchar short ushort int uint long ulong half float double) append
		 (loop for k in '(2 3 4 8 16) collect
		   (intern (format nil "~a~a" i k))))))
  (eval
   `(opencl-syntax ,vectors (&rest parameter)
     "OpenCl vector initialization"
     `(vector-initialization
       ;;vector type
       ',tag
       ;; args
       (make-nodelist ,parameter)))))

(build-context-switches
 :user-package :cmu-opencl
 :symbols opencl-symbols)

(build-swap-package
 :user-package :cmu-opencl
 :swap-package :cms-opencl
 :symbols opencl-swap)
