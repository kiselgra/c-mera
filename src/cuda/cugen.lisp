(in-package :cgen)

;;; pretty print override/restore

;;; copy from ast-pretty.lisp
;;; restores original behaviour
;;; Declaration item
;;; Handle declaration assignment.
(with-pp
  (with-proxynodes (value)

    (defprettymethod :before cgen::declaration-item
      (make-proxy value value))

    (defprettymethod :after cgen::declaration-item
      (del-proxy value))

    (defproxyprint :before value
      (if (slot-value item 'proxy-subnode)
	  (format stream " = ")))))

;;; copy from ast-pretty.lisp
;;; restores original behavious
;;; C-list / vectors
(with-pp
  (with-proxynodes (list-item)

    (defprettymethod :before cgen::c-list
      (make-proxy items list-item)
      (push-info 'skip-first)
      (format stream "{ "))

    (defprettymethod :after cgen::c-list
      (del-proxy items)
      (format stream " }"))

    (defproxyprint :before list-item
      (if (eql (top-info) 'skip-first)
	  (pop-info)
	  (format stream ", ")))))

(in-package :cugen)

;;nodes
(defelement cuda-funcall () (name grids blocks shared) (name &optional grids blocks shared)
  (make-instance 'cuda-funcall
		 :name (make-node name)
		 :grids (make-node grids)
		 :blocks (make-node blocks)
		 :shared (make-node shared)
		 :values '()
		 :subnodes '(name grids blocks shared)))

(defelement cuda-align () (name size) (name size)
  (make-instance 'cuda-align
		 :name (make-node name)
		 :size (make-node size)
		 :values '()
		 :subnodes '(size name)))

;;pretty
(with-pp
  (with-proxynodes (arrow-bracket comma)
    (defprettymethod :before cuda-funcall
      (if (slot-value item 'grids)
	  (progn (make-proxy name arrow-bracket)
		 (make-proxy grids comma)))
      (if (slot-value item 'shared)
	  (make-proxy blocks comma)))
    (defprettymethod :after cuda-funcall
      (if (slot-value item 'grids)
	  (progn
	    (del-proxy name)
	    (del-proxy grids)
	    (format stream ">>>")))
      (if (slot-value item 'shared)
	  (del-proxy blocks)))

    (defproxyprint :after arrow-bracket
      (format stream "<<<"))
    (defproxyprint :after comma
      (format stream ", "))))

(with-pp
  (with-proxynodes (size)
    (defprettymethod :before cuda-align
      (make-proxy size size)
      (format stream "__align__("))
    (defprettymethod :after cuda-align
      (del-proxy size))
    (defproxyprint :after size
      (format stream ") "))))

;;syntax
(prepare-handler)

(add-qualifier '__device__ '__global__ '__host__ '__shared__ '__constant__)

;;; CHLS inspired
(defmacro macrop (form &environment env)
  (multiple-value-bind (expansion expanded-p)
      (macroexpand-1 form env)
    `,expanded-p))


(defnodemacro funcall (function &rest parameter)
  (let* ((gbs nil)
	 (tmp (first parameter))
	 (cgen-node (if (and (listp function)
			     (or (fboundp (first function))
				 (cgen::find-handler (cg-user::cintern (format nil "~a" (first function)) 'cgen))))
			t nil)))
    (labels ((set-gbs ()
	       (setf gbs tmp)
	       (setf parameter (rest parameter))))
      (if (listp tmp)
	  (if (or (= (length tmp) 3) (= (length tmp) 2))
	      (if (symbolp (first tmp))
		  (if (and (not (fboundp (first tmp)))
			   (not (cgen::find-handler (cg-user::cintern (format nil "~a" (first tmp)) 'cgen))))
		      (set-gbs))
		  (set-gbs)))))
    `(if (macrop ,gbs)
	 (make-node (list 'cgen::funcall ',function ,gbs ,@parameter))
	 (make-node (list 'cgen::funcall (make-node (list ,(if cgen-node function `',function)
							  ,@gbs)
						    'cuda-funcall-handler)) ,@parameter))))
    ;; `(make-node (list 'cgen::funcall (make-node (list ,(if cgen-node function `',function) ,(first gbs)
    ;; 						      ,(second gbs)
    ;; 						      ,(third gbs))
    ;; 						'cuda-funcall-handler) ,@parameter))))

(defnodemacro struct (name alignment &body body)
  (if (numberp alignment)
      `(make-node (list 'cgen::struct (make-node (list ',name ,alignment)
						 'cuda-align-handler) ,@body))
      `(make-node (list 'cgen::struct ',name ,@body))))
      

(in-package :cg-user)
(use-functions |cudaDeviceSynchronize|
	       |cudaMemcpy|
	       |cudaMemcpyHostToDevice|
	       |cudaMemcpyDeviceToHost|)

(use-variables |blockIdx|
	       |blockDim|
	       |threadIdx|)
