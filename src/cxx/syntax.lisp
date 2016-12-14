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
  (let ((symbol (first (last item)))
	(init-start (position "{" item :test #'(lambda (a b)
						 (and (symbolp b)
						      (equal a (symbol-name b)))))))
    (if (and init-start ; { found
	     (symbolp symbol) 
	     (equal (symbol-name symbol) "}")) ; } found

	;; decompose arg list with list initializer
	(let ((spec+type+id (subseq item 0 init-start))
	      (inits        (subseq item (1+ init-start) (- (length item) 1))))
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
     ,bindings :prepend make-declaration-node/with-list-initializer)
    ;; make listnode with body
    ,(when body
	 ;; make single expression statements
	 `(make-expressions ,body))))


(c++syntax class (name superclasses &body body)
  "Define a c++ class with c'tor and d'ctor mactoler"
  ;; macrolet for locally defined c'tor and d'tor
  `(macrolet ((cmu-c++::constructor (args &body body)
		(let ((initializer nil))
		  (when (eql (first body) :init)
		    (setf initializer (second body))
		    (setf body (rest (rest body))))
		  `(constructor
		    ;; constructor name
		    (make-node ,',name)
		    ;; parameter
		    (parameter-list
		     (make-nodelist ,args :prepend make-declaration-node))
		    ;; initializer
		    ,(when initializer
			   `(make-nodelist ,initializer))
		    ;; body
		    (make-block ,body))))
		
	      (cmu-c++::destructor (&body body)
		`(function-definition
		  ;; destructor name / two subnodes : 1. '~' 2. <name>
		  (make-nodelist ('~ ,',name))
		  ;; parameter: nil
		  (parameter-list nil)
		  ;; body
		  (make-block ,body))))
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

(c++syntax new (&rest object)
  "Make new object"
  (let ((specifier (butlast object))
	(object (first (last object))))
    `(new
      ;;specifier
      ,(when specifier
         `(specifier
	   (make-nodelist ,specifier)))
      ;; type/object
      (make-node ,object))))

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

(c++syntax postfix& (item)
  "Postfix & operator (reference"
  `(postfix-expression '& (make-node ,item)))

(build-context-switches
 :user-package :cmu-c++
 :symbols c++symbols)

(build-swap-package
 :user-package :cmu-c++
 :swap-package :cms-c++
 :symbols c++swap)
