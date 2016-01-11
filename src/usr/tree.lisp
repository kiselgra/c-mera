(in-package :cg-user)


;;;
;;;
;;; In this file we provide helper functionality for using our
;;; generated (and at some points overly-nested) AST.
;;;
;;; NOTE that the AST interface is not considered entirely stable and
;;; there might be changes to it at some point.
;;;
;;;

(defmacro post-op (code &body body)
  "Proposed interface for AST-style transformations.  First, the
   c-mera CODE is evaluated and the BODY can then modify it via
   TREE. When the TREE is returned, the (potentially modified) tree is
   processed and evaluated.
   NOTE: macroexpansion will take place during evaluation!
   I.e. simply using it for analyzation might have side-effects."
  `(let ((tree ,code))
     ,@body))


;;;
;;; ast tools
;;;

(deflmacro slot-value-chain (base last &rest rest)
  "this is a utility to follow through a chain of SLOT-VALUEs, i.e.
   (S-V-C x a b c) -> (S-V (S-V (S-V x a) b) c)
   quite helpful when navigating our (very verbose) tree structure"
  (if rest
      (let ((rev (reverse rest)))
	`(slot-value (slot-value-chain ,base ,last ,@(reverse (rest rev)))
		     ,(first rev)))
      `(slot-value ,base ,last)))


;; these are used to find all function definitions in a sub-tree.
(defclass function-extractor () 
  ((functions :initform nil
	      :documentation "Stores the list of function-nodes found in a tree.")))

(defmethod cgen::traverser ((ext function-extractor) (node cgen::function-definition) level)
  (push node (slot-value ext 'functions))
  (call-next-method))


;;;
;;; find declaration names
;;;

(defgeneric decl-name (node)
  (:documentation "Find the names of declared variables (as given in
  FUNCTION and DECL forms."))

(defmethod decl-name ((node cgen::identifier))
  (slot-value node 'cgen::identifier))

(defmethod decl-name ((node cgen::function-definition))
  (decl-name (slot-value node 'cgen:item)))

(defmethod decl-name ((node cgen::declaration-item))
  (decl-name (slot-value node 'cgen::identifier)))

(defmethod decl-name ((node cgen::source-position))
  (decl-name (slot-value node 'cgen::subnode)))

(defmethod decl-name ((node cgen::prefix-expression))
  (decl-name (slot-value node 'cgen::object)))

;;;
;;; find parameter names (of a function definition)
;;;

(defgeneric parameter-names (node))

(defmethod parameter-names ((node cgen::function-definition))
  (let ((list (slot-value-chain node 'cgen::parameter 'cgen::parameters 'cgen::nodes)))
    (loop for p in list collect (decl-name p))))
