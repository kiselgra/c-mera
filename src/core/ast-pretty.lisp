;;;; Definition of how cgen prints code.
;;;; These methods are use by the pretty-print-traverser.

(in-package :cgen)

;;; How to print nodes without explicit ':self'-pretty-print-method.
;;; Normally all nodes with 'values' will be printed by this method.
(defprettymethod :self node
  (with-pp
    (if (not (gethash (class-of item) *ignore-node*))
	(loop for i in values do
	     (let ((val (slot-value item i)))
	       (if val
		   ;; handle various value-types
		   (cond ((stringp val) (format stream "\"~a\"" val))
			 ((characterp val)
			  (cond
			    ((eql val #\tab)
			     (format stream "'\\t'"))
			    ((or (eql val #\nul) (eql val #\null))
			     (format stream "'\\0'"))
			    ((eql val #\return)
			     (format stream "'\\r'"))
			    ((eql val #\newline)
			     (format stream "'\\n'"))
			    (t (format stream "'~a'" val))))

			 ;;((floatp val) (format stream "~,5f" val))
			 ((floatp val) (format stream "~a"
					       (substitute #\e #\d
							  (format nil "~,8e" val))))
			 (t (format stream "~a" val)))))))))

;;; Expression-Statement
;;; Begin new line and append with semicolon.
(with-pp

  (defprettymethod :before expression-statement
    (format stream "~&~a" indent))

  (defprettymethod :after expression-statement
    (if (slot-value item 'semicolon)
	(format stream ";"))))

;;; Compound-Statement
;;; Begin new line (if not in 'for', 'while', or 'if' -statement).
;;; Open and close brackets if needed (manged with a traverser).
(with-pp

  (defprettymethod :before compound-statement
    (if (slot-value item 'brackets)
	(progn
	  (if (or (eql (top-info) 'for)
		  (eql (top-info) 'while)
		  (eql (top-info) 'if)
		  (eql (top-info) 'else))
	      (format stream "{~%")
	      (format stream "~&~a{~%" indent))
	  (if (eql (top-info) 'else)
	      (push-info 'block))))
    ++indent)

  (defprettymethod :after compound-statement
	--indent
    (if (slot-value item 'brackets)
	(progn
	  (if (eql (top-info) 'block)
	      (pop-info))
	  (format stream "~&~a}" indent)))))

;;; Types
;;; Print whitespace after a c-type.
(with-pp

  (defprettymethod :after c-type
    (if (and (not (eql (top-info) 'cast))
	     (not (eql (top-info) 'funcall))
	     (not (eql (top-info) 'function-pointer)))
	(format stream " "))))

;;; Function definition
(with-pp
  "pretty-print function definition"

  (with-proxynodes (parameters parameter)

    ;; Begin new line and add proxy-nodes.
    (defprettymethod :before function-definition
      (make-proxy parameter parameters)
      (format stream "~&~%~a" indent))

    ;; Remove temporary proxy-nodes
    (defprettymethod :after function-definition
      (del-proxy parameter))

    ;; Begin parameter-list.
    (defproxyprint :before parameters
      (if (not (slot-value item 'proxy-subnode))
	  (format stream "(void")
	  (format stream "(")))

    ;; Close parameter-list.
    (defproxyprint :after parameters
      (format stream ")"))

    ;; Handle parameters
    ;; Add proxy-node and info-token.
    (defprettymethod :before parameter-list
      (push-sign 'skip-first)
      (make-proxy parameters parameter))

    ;; Remove proxy node
    (defprettymethod :after parameter-list
      (del-proxy parameters))

    ;; Print parameters
    (defproxyprint :before parameter
      (if (eql (top-sign) 'skip-first)
	  (pop-sign)
	  (format stream ", ")))))

;;; Struct definition
;;; Begin new line and append semicolon.
(with-pp

  (defprettymethod :before struct-definition
    (format stream "~&~%~astruct " indent))

  (defprettymethod :after struct-definition
    (format stream ";")))

;;; Declaration list
;;; Open and close brackets and increase indent
;;; if necessary.
;;; Begin new line for every declaration-item and
;;; append semicolon.
(with-pp
  (with-proxynodes (declaration-item)

    (defprettymethod :before declaration-list
      (make-proxy bindings declaration-item)
      (push-info 'decl)
      (if (slot-value item 'brackets)
	  (progn
	    (format stream "~&~a{" indent)
	    ++indent)))

    (defprettymethod :after declaration-list
      (del-proxy bindings)
      (pop-info)
      (if (slot-value item 'brackets)
	  (progn
	    --indent
	    (format stream "~&~a}" indent))))

    (defproxyprint :before declaration-item
      (format stream "~&~a" indent))

    (defproxyprint :after declaration-item
      (format stream ";"))))

;;; Declaration item
;;; Handle declaration assignment.
(with-pp
  (with-proxynodes (value)

    (defprettymethod :before declaration-item
      (make-proxy value value))

    (defprettymethod :after declaration-item
      (del-proxy value))

    (defproxyprint :before value
      (if (slot-value item 'proxy-subnode)
	  (format stream " = ")))))


;;; For statement
(with-pp
  (with-proxynodes (init test step)

    (defprettymethod :before for-statement
      (push-info 'for)
      (make-proxy init init)
      (make-proxy test test)
      (make-proxy step step))

    (defprettymethod :after for-statement
      (pop-info)
      (del-proxy init)
      (del-proxy test)
      (del-proxy step))

    (defproxyprint :before init
      (format stream "~&~afor(" indent))

    (defproxyprint :after init
      (format stream "; "))

    (defproxyprint :after test
      (format stream "; "))

    (defproxyprint :after step
      (format stream ")"))))

;;; While statement
(with-pp
  (with-proxynodes (test)
    (defprettymethod :before while-statement
      (push-info 'while)
      (format stream "~&~awhile" indent)
      (make-proxy test test))
    (defprettymethod :after while-statement
      (pop-info)
      (del-proxy test))
    (defproxyprint :before test
      (format stream " ("))
    (defproxyprint :after test 
      (format stream ") "))))

;;; If-statement
;;; Handle normal and nested ifs.
(with-pp
  (with-proxynodes (test else)

    (defprettymethod :before if-statement
      (make-proxy test test)
      (make-proxy else-body else)
      (if (eql (top-info) 'else)
	  (progn
	    (format stream "if")
	    (push-info 'else-if))
	  (progn
	    (format stream "~&~aif" indent)
	    (push-info 'if))))

    (defprettymethod :after if-statement
      (del-proxy test)
      (del-proxy else-body)
      (pop-info))

    (defproxyprint :before test
      (format stream " ("))

    (defproxyprint :after test
      (format stream ") "))

    (defproxyprint :before else
      (push-info 'else)
      (if (slot-value item 'proxy-subnode)
	  (format stream "~&~aelse " indent)))

    (defproxyprint :after else
      (pop-info))))

;;; Infix-expression
(with-pp
  (with-proxynodes (member)

    (defprettymethod :before infix-expression
      (if (or (eql (top-info) 'infix)
	      (eql (top-info) 'oref)
	      (eql (top-info) 'not)
	      (eql (top-info) 'cast))
	  (format stream "("))
      (push-info 'infix)
      (cond ((eql (slot-value item 'operator) 'or)
	     (push-sign '\|\|))
	    ((eql (slot-value item 'operator) 'and)
	     (push-sign '&&))
	    (t (push-sign (slot-value item 'operator))))
      ;; (if (eq (slot-value item 'operator) 'or)
      ;; 	  (push-sign '\|\|)
      ;; 	  (push-sign (slot-value item 'operator)))
      (push-sign 'skip-first)
      (make-proxy members member))

    (defprettymethod :after infix-expression
      (pop-info)
      (pop-sign)
      (del-proxy members)
      (if (or (eql (top-info) 'infix)
	      (eql (top-info) 'oref)
	      (eql (top-info) 'cast))
	  (format stream ")")))
    
    (defproxyprint :before member
      (if (eql (top-sign) 'skip-first)
	  (pop-sign)
	  (format stream " ~a " (top-sign))))))

;;; Assignment
(with-pp
  (with-proxynodes (rest)

    (defprettymethod :before assignment-expression
      (if (eql (top-info) 'infix)
	  (format stream "("))
      (push-info 'assignment)
      (push-sign (slot-value item 'operator))
      (make-proxy rest rest))

    (defprettymethod :after assignment-expression
      (del-proxy rest)
      (pop-info)
      (pop-sign)
      (if (eql (top-info) 'infix)
	  (format stream ")")))

    (defproxyprint :before rest
      (format stream " ~a " (top-sign)))))

;;; Conditional expression
(with-pp
  (with-proxynodes (then)

    (defprettymethod :before conditional-expression
      (if (eql (top-info) 'infix)
	  (format stream "("))
      (push-info 'conditional)
      (make-proxy then then))

    (defprettymethod :after conditional-expression
      (del-proxy then)
      (pop-info)
      (if (eql (top-info) 'infix)
	  (format stream ")")))

    (defproxyprint :before then
      (format stream " ? "))

    (defproxyprint :after then
      (format stream " : "))))

;;; Jump-Statements
(with-pp
  (with-proxynodes (member)

    (defprettymethod :before jump-statement
      (make-proxy members member))

    (defprettymethod :after jump-statement
      (del-proxy members))

    (defproxyprint :before member
      (if (slot-value item 'proxy-subnode)
	  (format stream " ")))))

;;; Qualifiers
(with-pp
  
  (defprettymethod :after qualifier
    (format stream " ")))


;;; Float
(with-pp

  (defprettymethod :after float-type
	(format stream "f")))

;;; Pointer-de-reference
(with-pp

  (defprettymethod :before pointer-dereference
    (format stream "(*"))
  
  (defprettymethod :after pointer-dereference
    (format stream ")")))

;;; Pointer-reference
(with-pp
  (with-proxynodes (pref)

    (defprettymethod :before pointer-reference
      (make-proxy pointer pref))

    (defprettymethod :after pointer-reference
      (del-proxy pointer))

    (defproxyprint :after pref
      (format stream "->"))))

;;; Function-pointer
(with-pp
  (with-proxynodes (ident param)
    
    (defprettymethod :before function-pointer
      (push-info 'function-pointer)
      (make-proxy parameters param)
      (make-proxy identifier ident))
    
    (defprettymethod :after function-pointer
      (pop-info)
      (del-proxy parameters)
      (del-proxy identifier))

    (defproxyprint :before ident
      (format stream "("))
    
    (defproxyprint :after ident
      (format stream ")"))

    (defproxyprint :before param
      (format stream "("))

    (defproxyprint :after param
      (format stream ")"))))

;;; Object-reference
(with-pp
  (with-proxynodes (oref)

    (defprettymethod :before object-reference
      (push-info 'oref)
      (make-proxy object oref))

    (defprettymethod :after object-reference
      (del-proxy object)
      (pop-info))

    (defproxyprint :after oref
      (format stream "."))))

;;; Arrays
(with-pp
  (with-proxynodes (aref)
    (defprettymethod :before array-reference
      (make-proxy indizes aref))

    (defprettymethod :after array-reference
      (del-proxy indizes))

    (defproxyprint :before aref
      (format stream "["))

    (defproxyprint :after aref
      (format stream "]"))))

;;; C-list / vectors
(with-pp
  (with-proxynodes (list-item)

    (defprettymethod :before c-list
      (make-proxy items list-item)
      (push-info 'skip-first)
      (format stream "{ "))

    (defprettymethod :after c-list
      (del-proxy items)
      (format stream " }"))

    (defproxyprint :before list-item
      (if (eql (top-info) 'skip-first)
	  (pop-info)
	  (format stream ", ")))))

;;; Prefix-Expressions
(with-pp
  (with-proxynodes (prefix)

    (defprettymethod :before prefix-expression
      (push-sign (slot-value item 'operator))
      (make-proxy object prefix))

    (defprettymethod :after prefix-expression
      (pop-sign)
      (del-proxy object))

    (defproxyprint :before prefix
      (format stream "~a" (top-sign)))))

;;; Postfix expressions
(with-pp
  (with-proxynodes (postfix)

    (defprettymethod :before postfix-expression
      (push-sign (slot-value item 'operator))
      (make-proxy object postfix))

    (defprettymethod :after postfix-expression
      (pop-sign)
      (del-proxy object))

    (defproxyprint :after postfix
      (format stream "~a" (top-sign)))))

;;; Not-expression
(with-pp

  (defprettymethod :before not-expression
    (push-info 'not)
    (format stream "(not "))

  (defprettymethod :after not-expression
    (pop-info)
    (format stream ")")))

;;; Function-call
(with-pp
  (with-proxynodes (parameter function)

    (defprettymethod :before function-call
      (make-proxy parameter parameter)
      (make-proxy function function)
      (push-info 'skip-first))

    (defprettymethod :after function-call
      (del-proxy parameter)
      (del-proxy function)
      (format stream ")"))

    (defproxyprint :before function
      (push-info 'funcall-function))

    (defproxyprint :after function
      (pop-info)
      (format stream "("))

    (defproxyprint :before parameter
      (if (eql (top-info) 'skip-first)
	  (pop-info)
	  (format stream ", "))
      (push-info 'funcall))

    (defproxyprint :after parameter
      (pop-info))))
      

;;; Include directive
(with-pp

  (defprettymethod :self include-macro
    (format stream (if (stringp (slot-value item 'file))
		       "~&#include \"~a\""
		       "~&#include ~a~%")
	    (slot-value item 'file))))

;;; Typecast
(with-pp
  (with-proxynodes (type)

    (defprettymethod :before cast-expression
      (push-info 'cast)
      (make-proxy type type)
      (format stream "("))

    (defprettymethod :after cast-expression
      (pop-info)
      (del-proxy type)
      (format stream ")"))

    (defproxyprint :before type
      (format stream "("))

    (defproxyprint :after type
      (format stream ")"))))

;;; typedef
(with-pp
  (defprettymethod :before typedef
    (format stream "~&~atypedef " indent))
  (defprettymethod :after typedef
    (format stream ";")))

;;; Comment
(with-pp

  (defprettymethod :before comment
    (format stream "~&~a" indent)))

;;; Line directive
(with-pp

  (defprettymethod :self source-position
    (if (not (eql nil (slot-value item 'line)))
	(format stream "~&#line ~a \"~a\"~%"
		(slot-value item 'line)
		(slot-value item 'file)))))
      


