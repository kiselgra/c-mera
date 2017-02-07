(in-package :cm-c)

;;;
;;; Plain nodes
;;;

;; function
(defnode function-definition () (item parameter body))
(defnode parameter-list () (parameters))

;; struct
(defnode struct-definition () (identifier members))
;; union
(defnode union-definition () (identifier members))
;; enum
(defnode enum-definition () (identifier members))

;; variable declaration
(defnode declaration-list (braces) (bindings body))
(defnode declaration-item () (specifier type identifier value))
(defnode declaration-value () (value))

;; essential bulding blocks
(defnode clist () (items)) 
(defnode array-reference  () (array indizes))
(defnode object-reference  () (object component))
(defnode pointer-reference  () (pointer component))
(defnode type  () (type))
(defnode float-type () (number))
(defnode specifier () (specifier)) 
(defnode function-pointer () (identifier parameters))

;;; 
;;; Expressions
;;;

;; = *= /= %= += -= <<= >>= &= ^= \|=
(defexpression assignment-expression (operator) (variable value))

;; + - / * > <  == != += -= >= <= \| \|\| & &= && % << >> or and
(defexpression infix-expression (operator) (members))

;; - + -- ++ ! * &
(defexpression prefix-expression (operator) (object))

;; - + -- ++ *
(defexpression postfix-expression (operator) (object))

;; not ('!' defined as prefix)
(defexpression not-expression () (value))

;; ? : 
(defexpression conditional-expression () (test then else))

;; cast
(defexpression cast-expression () (type object))


;;;
;;; Statements
;;;

;; goto, continue, break return
(defstatement jump-statement () (kind members))

(defstatement expression-statement (semicolon) (expression))
(defstatement compound-statement (braces) (statements))

(defstatement if-statement () (test if-body else-body))

;;; Loops
(defstatement for-statement () (init test step body))
(defstatement while-statement () (test body))
(defstatement do-statement () (test body))


;;; Comment. Leading chars ('//' or other) can also be defined explicitly.
(defstatement comment (chars comment linebreak) ())

;;; switch-case
(defstatement switch-case-statement () (switch cases))
(defnode switch-case-item () (constant body))

;;;
;;; gcc extensions
;;;

(defexpression attribute-expression () (arguments));


;;; typedef
(defstatement typedef () (declaration))

;;;
;;; Special nodes
;;;


(defnode include (file) ())

;;; TODO test!
(defnode preprocessor-macro (name function) (body))
