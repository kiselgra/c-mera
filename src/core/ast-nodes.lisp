;;;; Definitions of cgen nodes.
;;;; Helper functions and macros defined in ast-utils.lisp

(in-package :cgen)

;;; core nodes
;;; Symbols in 'subnodes' are slots which contain nodes.
;;; Slots only with values are defined in 'values'.
;;; This distinction is used by the traverser.
(defnode node () (values subnodes))
(defnode expression (node) ())
(defnode statement (node) ())

;;; Proxy nodes are only used implicit.
(defnode proxy (node) (proxy-subnode info))

;;; The only node type, which can contain a list of nodes.
;;; A special traverser function is used for this node.
;;; Subnodes are handled automatically.
(defelement nodelist () (nodes) (&body list) 
  (make-instance 'nodelist
		 :nodes (mapcar #'make-node list)
		 :values '()
		 :subnodes '(nodes)))

;;; An additionaly handler for the nodelist.
;;; Subnodes are not handled automatically but the
;;; handler cat be set.
(defhandler set-nodelist-handler () (item-list handler)
  (make-instance 'nodelist
		 :nodes (mapcar #'(lambda (x) (make-node x handler)) item-list)
		 :values '()
		 :subnodes '(nodes)))

;;;
;;; Basic Nodes (no expression/statement distinction)
;;;
(defelement identifier () (identifier) (identifier)
  (make-instance 'identifier
		 :identifier identifier
		 :values '(identifier)
		 :subnodes '()))

(defelement constant () (constant) (constant)
  (make-instance 'constant 
		 :constant constant
		 :values '(constant)
		 :subnodes '()))

(defelement string-literal () (string) (string)
  (make-instance 'string-literal
		 :string string
		 :values '(string)
		 :subnodes '()))

(defelement function-definition (function) (item parameter body) (tag item parameter &body body)
  (make-instance 'function-definition 
		 :item (make-node item 'declaration-item-handler)
		 :parameter (make-node parameter 'parameter-list-handler)
		 :body (make-node body 'compound-statement-handler)
		 :values '()
		 :subnodes '(item parameter body)))

(defelement parameter-list () (parameters) (&rest parameter-list)
  (make-instance 'parameter-list
		 :parameters (make-node
			      (list parameter-list 'declaration-item-handler)
			      'set-nodelist-handler)
		 :values '()
		 :subnodes '(parameters)))

(defelement struct-definition (struct) (identifier members) (tag name &body members)
  (make-instance 'struct-definition
		 :identifier (make-node name)
		 :members (make-node members 'compound-statement-handler)
		 :values '()
		 :subnodes '(identifier members)))

(defelement struct-list (clist) (items) (tag &rest items)
  (make-instance 'struct-list
		 :items (make-node items 'nodelist-handler)
		 :values '()
		 :subnodes '(items)))

(defelement union-definition (union) (identifier members) (tag name &body members)
  (make-instance 'union-definition
		 :identifier (make-node name)
		 :members (make-node members 'compound-statement-handler)
		 :values '()
		 :subnodes '(identifier members)))
  
(defelement declaration-list (decl) (bindings body brackets) (tag declaration-list &body statement-list)
  (make-instance 'declaration-list
		 :bindings (make-node 
			    (list declaration-list 'declaration-item-handler) 
			    'set-nodelist-handler)
		 :body (if statement-list
			   (make-node
			    (list statement-list
				  'expression-statement-handler)
			    'set-nodelist-handler)
			   nil)
		 :brackets nil
		 :values '()
		 :subnodes '(bindings body)))

(defelement declaration-item () (qualifier type identifier decorator value) (&rest item)
  (let ((qualifiers nil) (item item))
    (loop while (gethash (cond ((symbolp (first item)) (intern (symbol-name (first item)) :cgen))
			       ((listp (first item)) nil)
			       (t (first item)))
			 *qualifier*) do
	 (push (pop item) qualifiers))
    
    (destructuring-bind (type &optional identifier value) item
      (if value (setf value (make-node value)))
      (if identifier (setf identifier (make-node (if (symbolp identifier)
						     (clear identifier '(#\& #\*))
						     identifier))))
      (make-instance 'declaration-item
		     :qualifier (make-node (list (reverse qualifiers) 'qualifier-handler) 'set-nodelist-handler)
		     :type (make-node (list type) 'c-type-handler)
		     :identifier identifier
		     :decorator (make-node (list type identifier) 'decorator-handler)
		     :value value
		     :values '()
		     :subnodes '(qualifier type decorator identifier value)))))

(defelement array-reference (aref) (array indizes) (tag array &body indizes)
  (make-instance 'array-reference
		 :array (make-node array)
		 :indizes (make-node indizes 'nodelist-handler)
		 :values '()
		 :subnodes '(array indizes)))

(defelement pointer-dereference (dref) (pointer) (tag pointer)
  (make-instance 'pointer-dereference
		 :pointer (make-node pointer)
		 :values '()
		 :subnodes '(pointer)))

(defelement pointer-reference (pref) (pointer component) (tag pointer component)
  (make-instance 'pointer-reference
		 :pointer (make-node pointer)
		 :component (make-node component)
		 :values '()
		 :subnodes '(pointer component)))

(defelement object-reference (oref) (object component) (tag object component)
  (make-instance 'object-reference 
		 :object (make-node object)
		 :component (make-node component)
		 :values '()
		 :subnodes '(object component)))

(defelement function-pointer (fpointer) (identifier parameters) (tag identifier parameters)
  (make-instance 'function-pointer
		 :identifier (make-node identifier)
		 :parameters (make-node parameters 'parameter-list-handler)
		 :values '()
		 :subnodes '(identifier parameters)))

(defelement c-type () (type) (type)
  (let ((type (cond ((symbolp type) (clear type '(#\& #\*)))
		    ((listp type) (first (reverse (flatten type))))
		    (t type))))
    (if (not (gethash type *type*))
	(progn
	  ;;TODO warning if new type?
	  (setf (gethash type *type*) t)))
    (make-instance 'c-type
		   :type type
		   :values '(type)
		   :subnodes '())))

(defelement c-list (clist) (items) (tag &rest items)
  (make-instance 'c-list
		 :items (make-node items 'nodelist-handler)
		 :values '()
		 :subnodes '(items)))

;;; No distinction between specifier and qualifier.
;;; Everything except the variable name and the type
;;; is handled as a "qualifier".
(defelement qualifier () (qualifier) (qualifier)
  (if (eql (class-of qualifier) (find-class 'source-position))
      qualifier
      (make-instance 'qualifier
		     :qualifier (make-node qualifier 'identifier-handler)
		     :values '()
		     :subnodes '(qualifier))))
      ;; (make-instance 'qualifier
      ;; 		     :qualifier (make-node qualifier)
      ;; 		     :values '()
      ;; 		     :subnodes '(qualifier))
      ;; (make-instance 'qualifier
      ;; 		     :qualifier (make-node qualifier 'identifier-handler)
      ;; 		     :values '(qualifier)
      ;; 		     :subnodes '(qualifier))))

(defelement decorator () (decorator) (&rest elements)
  (let ((deco (crop '(#\& #\*) (list
				(if (symbolp (first elements)) (first elements))
				(if (symbolp (second elements)) (second elements))))))
    (make-instance 'decorator
		   :decorator deco
		   :values '(decorator)
		   :subnodes '())))


(defelement float-type (float-type) (number) (tag number)
  (make-instance 'float-type
		  :number (make-node number 'constant-handler)
		  :values '()
		  :subnodes '(number)))
  


;;;
;;; Expressions
;;;


;;; ALL assignment expressions
(defexpression assignment-expression (= *= /= %= += -= <<= >>= &= ^= \|=)
    (operator variable rest) (tag variable &rest rest)
  (make-instance 'assignment-expression
		 :operator tag
		 :variable (make-node variable)
		 :rest (make-node rest 'nodelist-handler)
		 :values '()
		 :subnodes '(variable rest)))

;;; ALL infix expressions (arithmetic and logic)
(defexpression infix-expression (+ - / * > <  == != += -= >= <= \| \|\| & &= && % << >> or and)
    (operator members) (tag &body rest)
  (make-instance 'infix-expression
		 :operator tag
		 :members (make-node rest 'nodelist-handler)
		 :values '()
		 :subnodes '(members)))

;;; Prefix: Node not used directly, but with pre-processing
(defexpression prefix-expression (prefix targ-of addr-of) (object operator) (tag object operator)
  (make-instance 'prefix-expression
		 :object (make-node object)
		 :operator operator
		 :values '()
		 :subnodes '(object)))

;;; Postfix: Node not used directly, but with pre-processing
(defexpression postfix-expression (postfix) (object operator) (tag object operator)
  (make-instance 'postfix-expression
		 :object (make-node object)
		 :operator operator
		 :values '()
		 :subnodes '(object)))

(defexpression not-expression (not) (value) (tag value)
  (make-instance 'not-expression
		 :value (make-node value)
		 :values '()
		 :subnodes '(value)))

(defexpression conditional-expression (?) (test then else) (tag test then else)
  ;(make-instance 'assignment-expression
  (make-instance 'conditional-expression
		 :test (make-node test)
		 :then (make-node then)
		 :else (make-node else)
		 :values '()
		 :subnodes '(test then else)))

(defexpression cast-expression (cast) (type object) (tag type object)
  (make-instance 'cast-expression 
  		 :type (make-node
  		 	type
  		 	'declaration-item-handler)
  		 :object (make-node object)
  		 :values '()
  		 :subnodes '(type object)))

(defexpression function-call (funcall) (function parameter) (tag function &optional &rest parameter)
  (make-instance 'function-call
		 :function (make-node function)
		 :parameter (make-node parameter 'nodelist-handler)
		 :values '()
		 :subnodes '(function parameter)))

;;; Technically a statement but much simpler to handle as an expression.
(defexpression jump-statement (continue break return) (tag members) (tag &rest rest)
  (make-instance 'jump-statement
		 :tag tag
		 :members (make-node rest 'nodelist-handler)
		 :values '(tag)
		 :subnodes '(members)))

;;;
;;; Statements
;;;

;;; Expression statement
(defstatement expression-statement () (expression break semicolon) (expression) ;;  &optional &key (break nil))
  (macrolet ((check-subnode (class) 
	       `(subtypep (class-of (slot-value exp? 'subnode))
			  (find-class ,class)))
	     (check-node (class)
	       `(subtypep (class-of exp?)
			  (find-class ,class))))
    (let ((exp? (make-node expression))
	  (exp! nil))
      (if (eql (class-name (class-of exp?)) 'source-position)
	  (setf exp! (check-subnode 'expression))
	  (setf exp! (check-node 'expression)))
      (if exp! 
	  (make-instance 'expression-statement
			 :expression exp?
			 :break nil
			 :semicolon t
			 :values '()
			 :subnodes '(expression))
	  exp?))))

;;; Compound statement
(defstatement compound-statement () (statement-list brackets) (&rest statement-list)
  (make-instance 'compound-statement
		 :statement-list (make-node 
				  (list statement-list
					'expression-statement-handler)
				  'set-nodelist-handler)
		 :brackets t
		 :values '()
		 :subnodes '(statement-list)))

;;; If
(defstatement if-statement (if) (test if-body else-body) (tag test if-body &optional else-body)
  (make-instance 'if-statement
		 :test (make-node test)
		 :if-body (make-node (list if-body)
				     'compound-statement-handler)
		 :else-body (if else-body (make-node (list else-body) 
						     'compound-statement-handler))
		 :values '()
		 :subnodes '(test if-body else-body)))

;;; Loops
(defstatement for-statement (for) (init test step body) (tag init &body body)
  (destructuring-bind (decl test step) init
    (make-instance 'for-statement
		   :init (make-node decl 'declaration-item-handler)
		   :test (make-node test)
		   :step (make-node step)
		   :body (make-node body 'compound-statement-handler)
		   :values '()
		   :subnodes '(init test step body))))

(defstatement while-statement (while) (test body) (tag test &body body)
  (make-instance 'while-statement
		 :test (make-node test)
		 :body (make-node body 'compound-statement-handler)
		 :values '()
		 :subnodes '(test body)))


;;; Comment. Leading chars ('//' or other) can also be defined explicitly.
(defstatement comment (comment) (comment chars) (tag comment &optional chars)
  (make-instance 'comment
		 :comment comment
		 :chars chars
		 :values '(chars comment)
		 :subnodes '()))

;;; typedef
(defstatement typedef (typedef) (item) (tag declaration-item)
  (make-instance 'typedef
		 :item (make-node declaration-item 'declaration-item-handler)
		 :values '()
		 :subnodes '(item)))

;;;
;;; Special nodes
;;;


;;; C-Preprocessor macros
(defelement include-macro (include) (file) (tag file)
  (make-instance 'include-macro
		 :file file
		 :values '(file)
		 :subnodes '()))

;;; TODO test!
(defelement preprocessor-macro (macro) (name function body) (name function &body body)
  (make-instance 'preprocessor-macro
		 :name name
		 :function function
		 :body (make-node body 'body-handler)
		 :values '(name function)
		 :subnodes '(body)))

;;; Node with source location informations
;;; Direct usager is not intendet
(defelement source-position (source-pos) (line file subnode) (tag line file subnode)
  (make-instance 'source-position
		 :line line
		 :file file
		 :subnode subnode
		 :values '(line file)
		 :subnodes '(subnode)))
