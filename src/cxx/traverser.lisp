(in-package :cm-c++)

;;; Add clean lists to decl-blocker stacks
;;; avoid extra braces in class defintion
(decl-blocker-extra-nodes constructor)


;;; Check if identifier is of type "operatorXX"
;;; and prevent renaming of cxx operator definition
(defmethod check-and-get-name :before ((item renamer) check-name)
  (with-slots (name-map) item
    (let ((operatorXX (symbol-name check-name)))
      (when (and (>= (length operatorXX) 8)
	     (string-equal "operator" operatorXX :start2 0 :end2 8))
	(when   (not (gethash operatorXX name-map)))
	;; put unmodified operator into name-map
	;; -> this will be used later directly without check
	(setf (gethash operatorXX name-map) check-name)))))
	

;;; Insert virtual for functions declared as pure
;;; Probably breaks in weird cases where virtual functions define local classes with virtual functions, because we don't keep a stack. We find this is reasonable :)
(defclass virtualizer ()
  ((function :initform nil)
   (in-return-part :initform nil)
   (node-to-delete :initform nil)))


(with-proxynodes (return-type-node)
  
  (defmethod traverser :before ((v virtualizer) (f function-definition) level)
    "insert a proxy node to caputre the return type, called ITEM
     also store reference to the function being traversed"
    (setf (slot-value v 'function) f)
    (with-slots (item) f
      (make-proxy item return-type-node)))

  (defmethod traverser :after ((v virtualizer) (f function-definition) level)
    "remove the proxy (as well as the function-reference) created in the previous method"
    (setf (slot-value v 'function) nil)
    (with-slots (item) f
      (del-proxy item)))

  (defproxymethod :before (v virtualizer) return-type-node
    "set virtualizer flag that we are inside the return-type branch of the function node"
    (setf (slot-value v 'in-return-part) t))

  (defproxymethod :after (v virtualizer) return-type-node
    "reset flag: we are not longer inside the return-branch"
    (setf (slot-value v 'in-return-part) nil)
    (setf (slot-value v 'node-to-delete) nil))

  (defmethod traverser :before ((v virtualizer) (i identifier) level)
    "we use a before method to not overwrite the traversal code in the actual method"
    (when (equal (symbol-name (slot-value i 'identifier)) "VIRTUAL")
      (setf (slot-value (slot-value v 'function)
			'virtual)
	    t)
      (setf (slot-value v 'node-to-delete) i)))

  (defmethod traverser :after ((v virtualizer) (list nodelist) level)
    ""
    (with-slots (in-return-part node-to-delete) v
      (when in-return-part
	(with-slots (nodes) list
	  (setf nodes (remove-if (lambda (x) (eql x node-to-delete)) nodes)))))))


