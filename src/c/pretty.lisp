(in-package :cm-c)

;;; Expression-Statement
;;; Begin new line and append semicolon where needed.
(with-pp

  (defprettymethod :before expression-statement
    (push-info 'expression-statement)
    (when (or (typep (node-slot expression) 'function-call)
	      (typep (node-slot expression) 'infix-expression)
	      (typep (node-slot expression) 'prefix-expression)
	      (typep (node-slot expression) 'postfix-expression))
      (format stream "~&~a" indent)))

  (defprettymethod :after expression-statement
    (pop-info)
    (when (or (typep (node-slot expression) 'function-call)
	      (typep (node-slot expression) 'infix-expression)
	      (typep (node-slot expression) 'prefix-expression)
	      (typep (node-slot expression) 'postfix-expression)
	      (typep (node-slot expression) 'empty)
	      (node-slot force-semicolon))
      (format stream ";"))))

;;; Compound-Statement
;;; Begin new line (if not in 'for', 'while', or 'if' statement).
;;; Open and close brackets if needed (managed with a traverser).
(with-pp

  (defprettymethod :before compound-statement
    ;; check if braces are to print
    (if (node-slot braces)
	(progn
	  ;; do not start new line for these cases
	  (if (or (eql (top-info) 'for)
		  (eql (top-info) 'while)
		  (eql (top-info) 'do)
		  (eql (top-info) 'if)
		  (eql (top-info) 'else))
	      ;; simply append brace
	      (format stream " {~%")
	      ;; start new line+indent+brace
	      (format stream "~&~a{~%" indent))
	  ;; add info for following subnodes
	  (push-info 'block)))
    ;; increase indent
    ++indent)

  (defprettymethod :after compound-statement
    ;; decrease indent
    --indent
    (pop-info)
    ;; close braces if required
    (if (node-slot braces)
	(progn
	  (format stream "~&~a}" indent)))))


;;; declaration item (specificer type identifier value)
;;; print whitespace after type only if identifier is present
(with-pp
  (with-proxynodes (type)

    (defprettymethod :before declaration-item
      (push-info 'declaration-item)
      (when (node-slot identifier)
	(make-proxy type type)))

    (defprettymethod :after declaration-item
      (pop-info)
      (when (node-slot identifier)
	(del-proxy type)))

    (defproxyprint :after type
      (format stream " "))))
      

;;; Types
;;; Print whitespace after a type.
(with-pp

  (defprettymethod :after type
    ;; omit in these cases
    (let ((info (top-info)))
      (when (and (node-slot type)
		 (not (eql info 'cast-expression))
		 (not (eql info 'funcall))
		 (not (eql info 'declaration-item)))
	(format stream " ")))))

;;; Function definition
(with-pp
  "pretty-print function definition"

  (with-proxynodes (parameters parameter)

    ;; Begin new line and add proxy-nodes.
    (defprettymethod :before function-definition
      (make-proxy parameter parameters)
      (push-info 'function-definition)
      (format stream "~&~%~a" indent))

    ;; Remove temporary proxy-nodes
    (defprettymethod :after function-definition
      (del-proxy parameter)
      (pop-info)
      (when (not (node-slot body))
	(format stream ";")))

    ;; Begin parameter-list.
    (defproxyprint :before parameters
      (format stream "("))
    
    ;; Close parameter-list.
    (defproxyprint :after parameters
      (format stream ")"))

    ;; Handle parameters
    ;; Add proxy-node and info-token.
    (defprettymethod :before parameter-list
      ;; if nodelist contains no elements emit void
      (when  (not (slot-value (node-slot parameters) 'nodes))
	(format stream "void"))
      (push-sign 'skip-first)
      (make-proxy parameters parameter))
    
    ;; Remove proxy node
    (defprettymethod :after parameter-list
      (when (eql (top-sign) 'skip-first)
	(pop-sign))
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

;;; Union
(with-pp
    (defprettymethod :before union-definition
      (format stream "~&~%~aunion " indent))

    (defprettymethod :after union-definition
      (format stream ";")))

;;; Enum
(with-pp
  (with-proxynodes (ident enum)
    
    (defprettymethod :before enum-definition
      ;; start new line only if not typedef /decl
      (if (or (eql (top-info) 'typedef)
	      (eql (top-info) 'decl))
	  (format stream "enum")
	  (format stream "~&~aenum" indent))
      ;; break or do not break lines between enums
      (when (and (not (eql (top-info) 'decl))
		 (> (length (slot-value (node-slot members) 'nodes)) 3))
	(push-sign 'enum-break))
      (push-info 'enum-definition)
      
      (when (node-slot identifier)
	(make-proxy identifier ident))
      
      (make-proxy members enum)
      (push-sign 'first-enum)
      ++indent)

    (defprettymethod :after enum-definition
      --indent
      (del-proxy members)
      (when (node-slot identifier)
	(del-proxy identifier))
      (if (eql (top-sign) 'enum-break)
	  (progn
	    (pop-sign)
	    (format stream "~&}"))
	  (format stream " }"))
      (pop-info)
      ;; end enum decl with ";" where required
      (when (not (or (eql (top-info) 'typedef)
		     (eql (top-info) 'decl)))
	(format stream ";")))
    

    (defproxyprint :before ident
      (format stream " "))

    (defproxyprint :before enum
      (if (eql (top-sign) 'first-enum)
	  (progn
	    (format stream " {")
	    (pop-sign))
	  (format stream ","))
      (if  (eql (top-sign) 'enum-break)
	   (format stream "~&~a" indent)
	   (format stream " ")))))

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
      (if (node-slot braces)
	  (progn
	    (format stream "~&~a{" indent)
	    ++indent)))

    (defprettymethod :after declaration-list
      (del-proxy bindings)
      (pop-info)
      (if (node-slot braces)
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
  (defprettymethod :before declaration-value
    (format stream " = ")))


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

    (defproxyprint :before step
      (push-info 'for-head))

    (defproxyprint :after step
      (pop-info)
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

;;; Do statement
(with-pp
  (with-proxynodes (test)
    (defprettymethod :before do-statement
      (push-info 'do)
      (format stream "~&~ado" indent)
      (make-proxy test test))
    (defprettymethod :after do-statement
      (pop-info)
      (del-proxy test))
    (defproxyprint :before test
      (format stream " while("))
    (defproxyprint :after test
      (format stream ");"))))


;;; If-statement
;;; Handle normal and nested ifs.
(with-pp
  (with-proxynodes (test else)

    (defprettymethod :before if-statement
      (make-proxy test test)
      (make-proxy else-body else)
      (if (eql (top-info) 'else)
	    (format stream " if")
	    (format stream "~&~aif" indent))
      (push-info 'if))

    (defprettymethod :after if-statement
      (del-proxy test)
      (del-proxy else-body)
      (pop-info))

    (defproxyprint :before test
      (format stream " ("))

    (defproxyprint :after test
      (format stream ")"))

    (defproxyprint :before else
      (push-info 'else)
      (if (node-slot proxy-subnode)
	  (format stream "~&~aelse" indent)))

    (defproxyprint :after else
      (pop-info))))

;;; switch case statement
(with-pp
  (with-proxynodes (switch case body)

    (defprettymethod :before switch-case-statement
      (push-info 'switch-case)
      (make-proxy switch switch)
      (format stream "~&~aswitch (" indent))

    (defprettymethod :after switch-case-statement
      (del-proxy switch)
      (pop-info))

    (defproxyprint :after switch
      (format stream ")"))

    (defprettymethod :before switch-case-item
      (make-proxy constant case)
      (make-proxy body body))

    (defprettymethod :after switch-case-item
      (del-proxy constant)
      (del-proxy body))

    (defproxyprint :before case
      (if (eql (node-slot proxy-subnode) nil)
	  (format stream "~&~adefault" indent)
	  (format stream "~&~acase " indent)))
    (defproxyprint :after case
      (format stream ":"))

    (defproxyprint :before body
      ++indent)
    (defproxyprint :after body
      --indent)))

;;; Infix-expression
(with-pp
  (with-proxynodes (member)

    (defprettymethod :before infix-expression
      (if (or (eql (top-info) 'infix)
	      (eql (top-info) 'oref)
	      (eql (top-info) 'not)
	      (eql (top-info) 'cast-expression)
	      (eql (top-info) 'prefix))
	  (format stream "("))
      (push-info 'infix)
      (cond ((eql (node-slot operator) 'or)
	     (push-sign '\|\|))
	    ((eql (node-slot operator) 'and)
	     (push-sign '&&))
	    (t (push-sign (node-slot operator))))
      (push-sign 'skip-first)
      (make-proxy members member))

    (defprettymethod :after infix-expression
      (pop-info)
      (pop-sign)
      (del-proxy members)
      (if (or (eql (top-info) 'infix)
	      (eql (top-info) 'oref)
	      (eql (top-info) 'not)
	      (eql (top-info) 'cast-expression)
	      (eql (top-info) 'prefix))
	  (format stream ")")))
    
    (defproxyprint :before member
      (if (eql (top-sign) 'skip-first)
	  (pop-sign)
	  (format stream " ~a " (top-sign))))))

;;; Assignment
(with-pp
  (with-proxynodes (value)

    (defprettymethod :before assignment-expression
      (cond
	((eql (top-info) 'infix)
	 (format stream "("))
	((eql (top-info) 'expression-statement)
	 (format stream "~&~a" indent)))
      (push-info 'assignment)
      (push-sign (node-slot operator))
      (make-proxy value value))

    (defprettymethod :after assignment-expression
      (del-proxy value)
      (pop-info)
      (pop-sign)
      (cond
	((eql (top-info) 'infix)
	 (format stream ")"))
	((eql (top-info) 'expression-statement)
	 (format stream ";"))))

    (defproxyprint :before value
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
      (format stream "~&~a" indent)
      (push-info 'jump-statement)
      (make-proxy members member))

    (defprettymethod :after jump-statement
      (format stream ";")
      (pop-info)
      (del-proxy members))

    (defproxyprint :before member
      (if (node-slot proxy-subnode)
	  (format stream " ")))))

;; Label statement
(with-pp
  (defprettymethod :before label-statement
    (format stream "~&"))
  (defprettymethod :after label-statement
    (format stream ":~%")))
  

;;; Qualifiers / specifier
(with-pp
  (with-proxynodes (specifier-proxy)
  
    (defprettymethod :before specifier
      (make-proxy specifier specifier-proxy))

    (defprettymethod :after specifier
      (del-proxy specifier))

    (defproxyprint :after specifier-proxy
      (format stream " "))))

;;; Float
(with-pp
  (defprettymethod :after float-type
	(format stream "f")))

;;; Pointer-reference
(with-pp
  (with-proxynodes (pref)

    (defprettymethod :before pointer-reference
      (make-proxy pointer pref))

    (defprettymethod :after pointer-reference
      (del-proxy pointer))

    (defproxyprint :after pref
      (format stream "->"))))

;;;; Object-reference
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
      (format stream "(*"))
    
    (defproxyprint :after ident
      (format stream ")"))

    (defproxyprint :before param
      (format stream "("))

    (defproxyprint :after param
      (format stream ")"))))

;;; Arrays
(with-pp
  (with-proxynodes (aref)
    (defprettymethod :before array-reference
      (push-info 'aref)
      (make-proxy indizes aref))

    (defprettymethod :after array-reference
      (pop-info)
      (del-proxy indizes))

    (defproxyprint :before aref
      (format stream "["))

    (defproxyprint :after aref
      (format stream "]"))))

;;;; C list / vectors
(with-pp
  (with-proxynodes (list-item)

    (defprettymethod :before clist
      (make-proxy items list-item)
      (push-info 'skip-first)
      (format stream "{ "))

    (defprettymethod :after clist
      (del-proxy items)
      (format stream " }"))

    (defproxyprint :before list-item
      (if (eql (top-info) 'skip-first)
	  (pop-info)
	  (format stream ", ")))))

;;; Prefix-Expressions
(with-pp

  (defprettymethod :before prefix-expression
    (when (eql (top-info) 'aref)
      (format stream "("))
    (push-info 'prefix)
    (format stream "~a" (node-slot operator)))
  
  (defprettymethod :after prefix-expression
    (pop-info)
    (when (eql (top-info) 'aref)
      (format stream ")"))))

;;;; Postfix expressions
(with-pp
  (defprettymethod :after postfix-expression
    (format stream "~a" (node-slot operator))))

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
  (with-proxynodes (arguments function)

    (defprettymethod :before function-call
      (make-proxy arguments arguments)
      (make-proxy function function)
      (when (eql (info-size) 0)
	(format stream "~&"))
      (push-sign 'skip-first-funcall))

    (defprettymethod :after function-call
      (del-proxy arguments)
      (del-proxy function)
      (format stream ")")
      (when (eql (top-sign) 'skip-first-funcall)
	(pop-sign))
      (when (eql (info-size) 0)
	(format stream ";")))

    (defproxyprint :before function
      (push-info 'funcall-function)
      ;; used for nested funcall-funcalls
      (push-sign 'no-skip-sentinel))

    (defproxyprint :after function
      (pop-info)
      (pop-sign)
      (format stream "("))

    (defproxyprint :before arguments
      (when (not (eql (top-sign) 'skip-first-funcall))
	  (format stream ", "))
      (push-info 'funcall))

    (defproxyprint :after arguments
      (when (eql (top-sign) 'skip-first-funcall)
	(pop-sign))
      (pop-info))))
      

;;; Include directive
(with-pp
  (defprettymethod :self include
    (format stream (if (stringp (node-slot file))
		       "~&#include \"~a\""
		       "~&#include ~a")
	    (node-slot file))))

;;; Typecast
(with-pp
  (with-proxynodes (type)

    (defprettymethod :before cast-expression
      (push-info 'cast-expression)
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
    (push-info 'typedef)
    (format stream "~&~atypedef " indent))
  (defprettymethod :after typedef
    (pop-info)
    (format stream ";")))

;;; Comment
(with-pp
  (defprettymethod :self comment
    (when (node-slot linebreak)
      (format stream "~&~a" indent))
    (format stream "~a" (node-slot chars))
    (format stream "~a"  (node-slot comment))))
    
    ;(format stream "~&~a" indent)))

;;; Attribute
(with-pp
  (with-proxynodes (arguments)
      
    (defprettymethod :before attribute-expression
      (make-proxy arguments arguments)
      (push-sign 'skip-first-attribute)
      (format stream "__attribute__ (("))
    
    (defprettymethod :after attribute-expression
      (del-proxy arguments)
      (when (eql (top-sign) 'skip-first-attribute)
	(pop-sign))
      (format stream "))"))

    (defproxyprint :before arguments
      (if (eql (top-sign) 'skip-first-attribute)
	  (pop-sign)
	  (format stream ", ")))))

;;;; Line directive
;(with-pp
;  "line directive"
;
;  (defprettymethod :self source-position
;    (if (not (eql nil (node-slot line)))
;	(format stream "~&#line ~a \"~a\"~%"
;		(node-slot line)
;		(node-slot file)))))
