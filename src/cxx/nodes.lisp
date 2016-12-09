(in-package :cm-c++)

;;; ====================
;;;      c++ nodes
;;; ====================

(defnode superclass () (attribute superclass))
(defnode declaration-list-initializer () (list-items))

(defstatement class () (name superclasses body))
(defstatement constructor () (name parameter initializer body))
(defstatement access-specifier (specifier) (body))
(defstatement namespace () (namespace body))
(defstatement using-namespace () (namespace))
(defstatement using () (item))
(defstatement template () (parameters body))

(defexpression from-namespace () (namespace name))
(defexpression instantiate () (template arguments))
(defexpression new () (specifier type))
(defexpression delete (tag) (object))
