;;;; Definitions of the most general node types
(in-package :c-mera)

;;; Node utils
(defmacro defclass# (name superclass-list slot-list &key export)
  "Class definition with slot initialisation :initarg :<name>"
  (let ((slots (loop for slot in slot-list collect
		 `(,slot :initarg ,(intern (symbol-name slot) :keyword)))))
    `(progn
       ,(when export `(export '(,name ,@slot-list)))
       (defclass ,name ,superclass-list ,slots))))

(defmacro make-instance# (name values subnodes)
  "Prepare make-<name> macro for class instantiation"
  `(defmacro ,(intern (format nil "~:@(~a~)" name)) (,@values ,@subnodes)
     (list 'make-instance '',name
	    ,@(loop for i in values   append `(,(intern (symbol-name i) :keyword) ,i))
	    ,@(loop for i in subnodes append `(,(intern (symbol-name i) :keyword) ,i))
	    :values '',values
	    :subnodes '',subnodes)))

(defmacro defnode (name values subnodes)
  "Define node derived form node"
  `(progn
     (defclass# ,name (node) ,(append values subnodes) :export t)
     (make-instance# ,name ,values ,subnodes)))

(defmacro defproxy (name)
  "Define node derived from proxy"
  `(progn
     (defclass# ,name (proxy) (values subnodes))
     (make-instance# ,name () ())))

(defmacro defleaf (name values)
  "Define node derived from leaf"
  `(progn
     (defclass# ,name (leaf) ,values :export t)
     (make-instance# ,name ,values ())))

(defmacro defstatement (name values subnodes)
  "Define node derived from statement"
  `(progn
     (defclass# ,name (statement) ,(append values subnodes) :export t)
     (make-instance# ,name ,values ,subnodes)))

(defmacro defexpression (name values subnodes)
  "Define node derived from expression"
  `(progn
     (defclass# ,name (expression) ,(append values subnodes) :export t)
     (make-instance# ,name ,values ,subnodes)))

;;; Symbols in 'subnodes' describe slots that contain nodes.
;;; Slots with only atoms are listed in 'values'.
;;; This distinction is used by the traverser.
(defclass# node () (values subnodes))
(defclass# expression (node) ())
(defclass# statement (node) ())
(defclass# leaf (node) ())

;;; Node with source location information.
(defnode source-position (line file) (subnode))

;;; Proxy nodes
;;; Temporary usage in traversers
(defnode proxy (info) (proxy-subnode))

;;; The one and only node type that contains a list of nodes.
(defnode nodelist () (nodes))

;; Defined in root c-mera for quoty
(defnode function-call () (function arguments))

;;; Leaf nodes
(defleaf identifier (identifier))
(defleaf number-literal (number))
(defleaf string-literal (string))
(defleaf character-literal (character))

