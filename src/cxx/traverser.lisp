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
    "Insert a proxy node to caputre the return type, called ITEM
     also store reference to the function being traversed"
    (setf (slot-value v 'function) f)
    (with-slots (item) f
      (make-proxy item return-type-node :node-name f)))

  (defmethod traverser :after ((v virtualizer) (f function-definition) level)
    "Remove the proxy (as well as the function-reference) created in the previous method"
    (setf (slot-value v 'function) nil)
    (with-slots (item) f
      (del-proxy item :node-name f)))

  (defproxymethod :before (v virtualizer) return-type-node
    "Set virtualizer flag that we are inside the return-type branch of the function node"
    (setf (slot-value v 'in-return-part) t))

  (defproxymethod :after (v virtualizer) return-type-node
    "Reset flag: we are not longer inside the return-branch"
    (setf (slot-value v 'in-return-part) nil)
    (setf (slot-value v 'node-to-delete) nil))

  (defmethod traverser :before ((v virtualizer) (i identifier) level)
    "We use a before method to not overwrite the traversal code in the actual method"
    (when (equal (symbol-name (slot-value i 'identifier)) "VIRTUAL")
      (setf (slot-value (slot-value v 'function)
			'virtual)
	    t)
      (setf (slot-value v 'node-to-delete) i)))

  (defmethod traverser :after ((v virtualizer) (list nodelist) level)
    "Remove the virtual marker from the list of return 'types'"
    (with-slots (in-return-part node-to-delete) v
      (when in-return-part
	(with-slots (nodes) list
	  (setf nodes (remove-if (lambda (x) (eql x node-to-delete)) nodes)))))))


;;; Identify nested or cascaded sets of access specifiers and resolve
(defclass access-respecifier ()
  ((parent-spec :initform '(nil))
   (sibling-spec :initform '(nil))))


(defmethod traverser :before ((ar access-respecifier) (cd class) level)
  "Push parrent and sibling specifiers"
  (with-slots (parent-spec sibling-spec) ar
  (push 'private parent-spec)
  (push 'private sibling-spec)))

(defmethod traverser :after ((ar access-respecifier) (cd class) level)
  "Pop hints"
  (with-slots (parent-spec sibling-spec) ar
  (pop parent-spec)
  (pop sibling-spec)))

(defmethod traverser :before ((ar access-respecifier) (sd struct-definition) level)
  "Push parent and sibling specifiers"
  (with-slots (parent-spec sibling-spec) ar
  (push 'public parent-spec)
  (push 'public sibling-spec)))

(defmethod traverser :after ((ar access-respecifier) (sd struct-definition) level)
  "Pop hints"
  (with-slots (parent-spec sibling-spec) ar
  (pop parent-spec)
  (pop sibling-spec)))

(defmethod traverser :before ((ar access-respecifier) (as access-specifier) level)
  "Push current parent and sibling according to own specifier"
  (with-slots (parent-spec sibling-spec) ar
  (with-slots (specifier) as
    (when (not specifier)
    (when (not (eql (first sibling-spec) (first parent-spec)))
      (setf specifier (first parent-spec))))
    (when specifier
    (push specifier parent-spec)
    (setf (first sibling-spec) specifier)))))

(defmethod traverser :after ((ar access-respecifier) (as access-specifier) level)
  "Pop parent/sibling and set current sibling for subsequent nodes"
  (with-slots (specifier) as
  (when specifier
    (with-slots (parent-spec sibling-spec) ar
    (pop parent-spec)))))
