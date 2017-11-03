(in-package :cm-c++)

;;; =================
;;;  c++ syntax
;;; =================

(defmacro c++syntax (tags lambda-list &body body)
  `(defsyntax ,tags (:cmu-c++) ,lambda-list ,@body))

(defmacro decompose-superclass (item)
  ;; build superclass node
  `(superclass
    ;; access specifier
    (make-node ,(first item))
    ;; class name
    (make-node ,(second item))))

(defmacro decompose-initializer (item)
  ;; build initalizer calls
  `(funcall
    ;; initializer name
    (make-node ,(first item))
    ;; initialize with
    (make-node ,(second item))))

(defun decompose-declaration (item)
  "Decompose initializer list / quite like declaration item. The last
   value returnd specifies if the declaration actually used an
   initializer list or not."
  ;; check if initialization is present
  (let ((val (first (last item))))
    (if (and (listp val)
	     (eql (length val) 1)
	     (listp (car val))
	     (eql (length (car val)) 1)
	     (listp (caar val)))
	;; decompose arg list with list initializer
	(let ((spec+type+id (butlast item))
	      (inits        (caar val)))
	  (let ((specifier (butlast spec+type+id 2))
		(type+id   (last    spec+type+id 2)))
	    (values specifier (first type+id) (second type+id) inits t)))

	;; pass to standard declaration decomposition
	(multiple-value-bind (spec type name init) (cm-c:decompose-declaration item)
	  (values spec type name init nil)))))

(defmacro make-declaration-node/with-list-initializer (item)
  "Decompose initializer list and instantiate nodes / quite like declaration item"
   (multiple-value-bind (specifier type id init initializer-list-p)
       (decompose-declaration item)
    `(declaration-item
      ;; set specifiers
      ,(when specifier
	     `(specifier
	       (make-nodelist ,specifier)))
      ;; set type
      (type (make-node ,type))
      ;; set identifier
      (make-node ,id)
      ;; set value
      ,(if init 
	   (if initializer-list-p
	       `(declaration-list-initializer (make-nodelist ,init))
	       `(declaration-value (make-node ,init)))
	   nil))))

(c++syntax decl (bindings &body body)
  "Declare variables"
  `(declaration-list
    ;; braces t, adjusted later by traverser
    t
    ;; make single declarations/bindings
    (make-nodelist
     ,(remove nil bindings) :prepend make-declaration-node/with-list-initializer)
    ;; make listnode with body
    ,(when body
	 ;; make single expression statements
	 `(make-expressions ,body))))

;; copy/extend  for pure virtual functions
(c++syntax function (name parameters &rest rest &environment env)
  "Define c++ function"
  (flet ((symbol-name-in-list (S L)
	   (member-if (lambda (x) (when (symbolp x) (equal (symbol-name x) (string-upcase S)))) L)))
    (let ((qualifiers (reverse (rest (symbol-name-in-list "->" (reverse rest))))))
      (destructuring-bind (type &body body) (rest (symbol-name-in-list "->" rest))
	(flet ((qualifier-there (Q)
		 (let ((there (symbol-name-in-list Q qualifiers)))
		   (if there
		       (setf qualifiers (remove-if (lambda (x) (eql x (first there)))
						   qualifiers)))
		   (if there t nil))))
	  (let* ((pure    (qualifier-there "pure"))
		 (virtual (or (qualifier-there "virtual") pure)))
	    `(function-definition
	      ,pure
	      ,virtual
	      ;; function name + type
	      ,(if (listp type)
		   ;; check if macro/function or list
		   (let ((first (first type)))
		     (if (and (not (listp first)) (fboundp! first env))
			 ;; type is macro or function
			 `(make-declaration-node (,type ,name))
			 ;; type is list with type information
			 `(make-declaration-node (,@type ,name))))
		   ;; type is single symbol
		   `(make-declaration-node (,type ,name)))
	      ;; parameter list
	      (parameter-list
	       (make-nodelist ,parameters :prepend make-declaration-node))
	      ,(if qualifiers
		   `(specifier (make-nodelist ,qualifiers))
		   nil)
	      ;; body
	      ,(if pure
		   `(cmu-c::set nil 0)
		   (when body
		     `(make-block ,body))))))))))

(c++syntax constructor (name args &body body)
  "Constructor with initializer list"
  (let ((initializer nil))
    (when (eql (first body) :init)
      (setf initializer (second body))
      (setf body (rest (rest body))))
    `(constructor
	 ;; constructor name
	 (make-node ,name)
       ;; parameter
       (parameter-list
	(make-nodelist ,args :prepend make-declaration-node))
       ;; initializer
       ,(when initializer
	      `(make-nodelist ,initializer))
       ;; body
       ,(when (or body initializer)
	      `(make-block ,body)))))

(c++syntax destructor (name &body body)
  "Destructor"
  `(destructor
    ;; destructor name
    (make-node ,name)
    ;; body
    ,(when body
	   `(make-block ,body))))

(c++syntax class (name superclasses &body body)
  "Define a c++ class with c'tor and d'ctor mactoler"
  ;; macrolet for locally defined c'tor and d'tor
  `(macrolet ((cmu-c++::constructor (args &body body)
		`(cms-c++::constructor ,',name ,args ,@body))
	      (cmu-c++::destructor (&body body)
		`(cms-c++::destructor ,',name ,@body)))
     (class
      ;; class name
      (make-node ,name)
      ;; superclasses
      (make-nodelist
       ,superclasses :prepend decompose-superclass)
      ;; compund statement with single expr statements
	  ,(if body
		 `(make-block ,body)
		 nil))))

(c++syntax (private public protected) (&body body)
  "Class access specifier"
  `(access-specifier ',tag  (make-expressions ,body)))

(c++syntax namespace (namespace &body body)
  "Make new namespace"
  `(namespace
    ;; namespace name
    (make-node ,namespace)
    ;; make namespace body
    (make-block ,body)))

(c++syntax using (item)
  "Using something"
  `(using (make-node ,item)))

(c++syntax using-namespace (item)
  "Using namespace"
  `(using-namespace (make-node ,item)))

(c++syntax (new new[]) (&rest object)
  "Make new object"
  (let ((specifier (butlast object))
	(object (first (last object))))
    `(new
      ;; new / new[]
      ',tag
      ;;specifier
      ,(when specifier
         `(specifier
	   (make-nodelist ,specifier)))
      ;; type/object
      (make-node ,object))))

(c++syntax (delete delete[]) (item)
  "Delete object"
  `(delete
    ;; delete / delete[]
    ',tag
    (make-node ,item)))

(c++syntax from-namespace (&rest rest)
  "From namesapce ::foo // foo::bar"
  ;; set last item
  (let ((namespace-cascade `(make-node ,(first (last rest)))))
    ;; loop form back to front collect namespaces
    (loop for i in (rest (reverse rest)) do
      (setf namespace-cascade
	    `(from-namespace
	      (make-node ,i)
	      ,namespace-cascade)))
    namespace-cascade))

(c++syntax template (parameters item)
  "C++ templates"
  `(template
    ;; set parameters
    (parameter-list
     (make-nodelist ,parameters :prepend make-declaration-node))
    ;; body
    (make-node ,item)))
    
(c++syntax instantiate (name &rest arguments)
  "Intantiate template"
  `(instantiate
    ;; name
    (make-node ,name)
    ;;
    (make-nodelist
     ,arguments :prepend cm-c:decompose-type)))

(c++syntax reference-type (item)
  "Postfix & operator (reference"
  `(postfix-expression '& (make-node ,item)))

(build-context-switches
 :user-package :cmu-c++
 :symbols c++symbols)

(build-swap-package
 :user-package :cmu-c++
 :swap-package :cms-c++
 :symbols c++swap)
