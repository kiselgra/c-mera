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

(defmacro decompose-list-initializer (item)
  "Decompose initializer list / quite like  declaration item"
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
	    ;; make declaration node
	    `(declaration-item
	      ;; set specifiers
	      ,(when specifier
		     `(specifier
		       (make-nodelist ,specifier)))
	      ;; set type
	      (type (make-node ,(first type+id)))
	      ;; set identifier
	      (make-node ,(second type+id))
	      ;; set value
	      (declaration-list-initializer
	       (make-nodelist ,inits)))))

	;; pass to standard declaration decomposition
	`(decompose-declaration ,item))))

(c++syntax decl (bindings &body body)
  "Declare variables"
  `(declaration-list
    ;; braces t, adjusted later by traverser
    t
    ;; make single declarations/bindings
    (make-nodelist
     ,bindings :prepend decompose-list-initializer)
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
		     (make-nodelist ,args :prepend decompose-declaration))
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
     (make-nodelist ,parameters :prepend decompose-declaration))
    ;; body
    (make-node ,item)))
    
(c++syntax instantiate (name &rest arguments)
  "Intantiate template"
  `(instantiate
    ;; name
    (make-node ,name)
    ;;
    (make-nodelist
     ,arguments :prepend decompose-type)))

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
