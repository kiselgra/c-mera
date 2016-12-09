(in-package :cm-cuda)

(defmacro cuda-syntax (tags lambda-list &body body)
  `(defsyntax ,tags (:cmu-cuda) ,lambda-list ,@body))

(cuda-syntax launch (kernel (&key blocks threads shared) &rest args)
  "Launch cuda kernels"
  `(function-call
    ;; put block threads an shard in name slot
    (cuda-funcall
     ;; kernel name
     (make-node ,kernel)
     ;; grid config
     (make-node ,blocks)
     ;; block config
     (make-node ,threads)
     ;; shared mem
     ,(when shared
	`(make-node ,shared)))
    ;; function agrs
    (make-nodelist ,args)))

(cuda-syntax struct (name alignment &body body)
  "Struct with alignment"
  `(struct-definition
    ;; put name an alignment in name slot
    (cuda-alignment
     (make-node ,alignment)
     (make-node ,name))
    ;; struct body
    (compound-statement
     ;; curly braces: t
     t
     ;; build subnodes
     (make-nodelist ,body))))
	       

(build-context-switches
 :user-package :cmu-cuda
 :symbols cuda-symbols)

(build-swap-package
 :user-package :cmu-cuda
 :swap-package :cms-cuda
 :symbols cuda-swap)
