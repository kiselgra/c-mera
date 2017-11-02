(in-package :cm-c++)

;;; ====================
;;;      c++ nodes
;;; ====================

(defnode superclass () (attribute superclass))
(defnode declaration-list-initializer () (list-items))
(defnode function-definition (virtual pure) (item parameter body))

(defstatement class () (name superclasses body))
(defstatement constructor () (name parameter initializer body))
(defstatement destructor () (name body))
(defstatement access-specifier (specifier) (body))
(defstatement namespace () (namespace body))
(defstatement using-namespace () (namespace))
(defstatement using () (item))
(defstatement template () (parameters body))

(defexpression from-namespace () (namespace name))
(defexpression instantiate () (template arguments))
(defexpression new (operator) (specifier type))
(defexpression delete (operator) (object))
