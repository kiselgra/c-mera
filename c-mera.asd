#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
				       (user-homedir-pathname))))
    (when (probe-file quicklisp-init)
      (load quicklisp-init)))

#+sbcl (require :sb-cltl2)

(in-package :cl-user)

(defmacro defpackage* (name (&key shadow-symbols export-symbols) &body body)
  "defpackage with (:shadow ,@<symbols>) and (:export ,@<symbols>)"
  `(let ((shadow-list (loop for i in (remove-duplicates ,shadow-symbols) collect
			(intern (format nil "~a" i) :keyword)))
	 (export-list (loop for i in (remove-duplicates ,export-symbols) collect
			(intern (format nil "~a" i) :keyword))) 
	 (body ',body))
     (eval `(defpackage ,,name
	      ,@body
	      (:shadow ,@shadow-list)
	      (:export ,@export-list)))))

;;; =======================
;;;    default symbols
;;; =======================

;; common lisp symbols
(defparameter cl-symbols '())
(do-external-symbols (s :common-lisp) (push s cl-symbols))

;; default package exports
(defparameter default-exports
  '(cintern lisp cm print! flatten simple-print switch-reader quoty
    
    ;; cm-user stuff
    replace-newline-with-backslash-newline
    codesting
    symbol-append
    extract-parameter-names-from-lambda-list
    get-declaration-name
    use-variables
    use-functions))


;;; =======================
;;;  ast + slot symbols 
;;; =======================

(defparameter c-mera-backend
	  '(character-literal string-literal
	    number-literal identifier arguments
	    function-call nodes nodelist
	    proxy-subnode info proxy subnode
	    file line source-position item tag
	    character number string function
	    check-and-get-name decl-blocker-extra-nodes
	    renamer name-map
	    *enabled-warnings* *suppressed-warnings*))

(defparameter c-backend
  (append c-mera-backend cl-symbols
	  '(name preprocessor-macro include typedef
	    chars comment do-statement while-statement init
	    for-statement else-body if-body if-statement
	    statements compound-statement expression semicolon
	    expression-statement kind jump-statement cast-expression
	    else then test conditional-expression not-expression
	    postfix-expression prefix-expression infix-expression
	    operator assignment-expression function-pointer float
	    pointer pointer-reference component object
	    object-reference indizes array array-reference items
	    clist value type specifier declaration-item
	    bindings braces declaration-list union-definition
	    members struct-definition parameters parameter-list
	    body parameter function-definition enum-definition
	    declaration-value float-type linebreak
	    constant attribute-expression switch cases
	    switch-case-statement switch-case-item switch-case-item)))

(defparameter c++backend
  (append c-backend
	  '(delete new instantiate from-namespace
	    template using using-namespace namespace
	    access-specifier initializer constructor
	    superclasses class attribute superclass
	    declaration-list-initializer list-items)))

(defparameter cuda-backend
  (append c++backend
	  '(size cuda-alignment shared threads
	    blocks cuda-funcall)))

(defparameter opencl-backend
  (append c++backend '(vector-initialization)))

(defparameter glsl-backend
  (append c-backend '(layout)))


;;; =======================
;;;      c symbols
;;; =======================

;; list used for package definition with shadowed symbols
;; and for for cm/lisp scope switch
(defparameter c-symbols
  '(and or not > <
    set = /= <= >=
    + - * /
    for while
    return break continue
    if cond when
    array aref
    cast union
    function
    progn block
    null length
    min max abs
    sin cos tan 
    1- 1+
    type float-type
    funcall
    attribute))

;; smybols not shadowed but exported
(defparameter c-syntax
  '(set *= %= += -= >>= <<= &= ^= \|=
    == != \| \|\| % << >> ^ & && ~ ! ?
    addr-of targ-of dref switch
    prefix++ prefix--
    postfix-- postfix++ postfix*
    struct enum oref pref specifier
    include comment decl
    fpointer for while
    typedef cast sizeof
    goto label clist))

(defparameter c-exports
  (append default-exports
	  c-symbols
	  c-syntax
	  cl-symbols))

(defparameter c-swap
  (append c-symbols c-syntax))


;;; =======================
;;;      c++ symbols
;;; =======================

;; extend c-symbols with c++ symbols /shadowed
(defparameter c++symbols
  (append c-symbols
	  '(delete decl)))

;; symbols not shadowed but exported
(defparameter c++syntax
  (append c-syntax
	  '(class vector new constructor
	    private public protected
	    namespace using reference-type
	    using-namespace from-namespace
	    template instantiate
	    for-each
	    dynamic-cast static-cast
	    reinterpret-cast const-cast)))

(defparameter c++exports
  (append default-exports
	  c++symbols
	  c++syntax
	  cl-symbols))

(defparameter c++swap
  (append c++symbols c++syntax))

;;; =======================
;;;      cuda symbols
;;; =======================

;; extend c++symbols with cuda symbols
(defparameter cuda-symbols
  c++symbols)

(defparameter cuda-syntax
  (append c++syntax
	  '(launch)))

(defparameter cuda-exports
  (append default-exports
	  cuda-symbols
	  cuda-syntax
	  cl-symbols))

(defparameter cuda-swap
  (append cuda-symbols cuda-syntax))

;;; =======================
;;;    opencl symbols
;;; =======================

;; exntend c++symbols with opencl symbols
(defparameter opencl-symbols
  c++symbols)

;; vecrot initialization symbols
(defparameter opencl-syntax
  (append c++syntax
	  (loop for i in '(char uchar short uchort int uint
			   long ulong half float double) append
	    (loop for k in '(2 3 4 8 16) collect
	     (intern (format nil "~a~a" i k))))))

(defparameter opencl-exports
  (append default-exports
	  opencl-symbols
	  opencl-syntax
	  cl-symbols))

(defparameter opencl-swap
  (append opencl-symbols opencl-syntax))

;;; =======================
;;;     glsl symbols
;;; =======================

;; extend c-symbols with glsl symbols
(defparameter glsl-symbols
  c-symbols)

(defparameter glsl-syntax
  (append c-syntax
	  '(layout)))

(defparameter glsl-exports
  (append default-exports
	  glsl-symbols
	  glsl-syntax
	  cl-symbols))

(defparameter glsl-swap
  (append glsl-symbols glsl-syntax))

;;; ===========================
;;;       core package
;;; ===========================

(defpackage* :c-mera
  (:shadow-symbols () :export-symbols c-mera-backend)
  (:use :common-lisp)
  (:export :defstatement :defexpression :defnode :defproxy :make-node
   :make-nodelist

	   :pretty-printer
	   :traverser
	   :set-indent-char
	   :defproxymethod
	   
	   ;; info
	   :*version*
	   :*generator*

	   ;; utils
	   :flatten
	   :fsm-boundp
	   :defsyntax :tag
	   :ensure-list
	   :print!
	   :fix-case
	   
       :fboundp!
	   :vboundp!
	   :quoty
	   

	   ;; build-context-switches
	   :build-context-switches
	   :build-swap-package


	   ;; taverser symbols
	   :subnodes
	   :proxy-subnode
	   :nodelist-traverser
	   :skip-first

	   ;; startup
	   :define-reader
	   :define-processor
	   :save-generator

	   ;; pre pocess
	   :define-switch
	   :define-switches
	   
	   ;;pretty printing
	   :defprettymethod :defproxyprint :with-proxynodes
	   :with-pp :++indent :--indent :stream :item :indent
	   :pop-sign :top-sign :push-sign :find-sign
	   :pop-info :top-info :push-info :find-info
	   :make-proxy :del-proxy :info-size
	   :node-slot
	   :delprettymethod

	   ;; delete
	   ;:print!
	   ))


;;; ===========================
;;;    c-mera backend packages
;;; ===========================

;; c-mera c backend
(defpackage* :cm-c
  (:shadow-symbols () :export-symbols c-backend)
  (:use :common-lisp :c-mera)
  (:import-from :cl-user :c-symbols :c-swap)
  (:shadow :type :float)
  (:export :simple-print
           :make-expressions
	   :make-block
	   :make-declaration-node
	   
	   :decompose-declaration
	   :decompose-type

	   :nested-nodelist-remover
           :else-if-traverser
	   :if-blocker
           :decl-blocker

	   :switch-reader
	   :cl-reader
	   :cm-reader
	   ))

;; c-mera c++ package
(defpackage* :cm-c++
  (:shadow-symbols () :export-symbols c++backend)
  (:use :c-mera :cm-c)
  (:shadow :delete :class :switch-reader :cl-reader :cm-reader :decompose-declaration)
  (:import-from :cl-user :c++symbols :c++swap)
  (:nicknames :cm-cxx)
  (:export :decompose-declaration))

;; c-mera cuda package
(defpackage* :cm-cuda
  (:shadow-symbols () :export-symbols cuda-backend)
  (:use :c-mera :cm-c)
  (:shadow :switch-reader :cl-reader :cm-reader)
  (:import-from :cl-user :cuda-symbols :cuda-swap))

;; c-mera opencl package
(defpackage* :cm-opencl
  (:shadow-symbols () :export-symbols opencl-backend)
  (:use :c-mera :cm-c)
  (:shadow :switch-reader :cl-reader :cm-reader)
  (:import-from :cl-user :opencl-symbols :opencl-swap))

;; c-mera glsl package
(defpackage* :cm-glsl
  (:shadow-symbols () :export-symbols glsl-backend)
  (:use :c-mera :cm-c)
  (:shadow :switch-reader :cl-reader :cm-reader)
  (:import-from :cl-user :glsl-symbols :glsl-swap))


;;; ============================
;;;     c-mera user packages
;;; ============================

;; c-mera c user package
(defpackage* :cmu-c
  (:shadow-symbols c-symbols :export-symbols c-exports)
  (:use :common-lisp)
  (:import-from :c-mera :flatten :print! :quoty)
  (:import-from :cm-c :simple-print :decompose-declaration
		:switch-reader :cl-reader :cm-reader))

;; c-mera c++ user package
(defpackage* :cmu-c++
  (:shadow-symbols () :export-symbols c++exports)
  (:use :cmu-c)
  (:shadow :class :delete :vector)
  (:import-from :cm-c++ :decompose-declaration)
  (:shadowing-import-from :cm-c++ :switch-reader
			  :cl-reader :cm-reader)
  (:nicknames :cmu-cxx))
		

;; c-mera cuda user package
(defpackage* :cmu-cuda
  (:shadow-symbols () :export-symbols cuda-exports)
  (:shadow :struct)
  (:use :cmu-c++)
  (:import-from :cm-c++ :decompose-declaration)
  (:shadowing-import-from :cm-cuda :switch-reader
			  :cl-reader :cm-reader))

;; c-mera opencl user package
(defpackage* :cmu-opencl
  (:shadow-symbols () :export-symbols opencl-exports)
  (:use :cmu-c++)
  (:import-from :cm-c++ :decompose-declaration)
  (:shadowing-import-from :cm-opencl :switch-reader
			  :cl-reader :cm-reader))

;; c-mera glsl user package
(defpackage* :cmu-glsl
  (:shadow-symbols () :export-symbols glsl-exports)
  (:use :cmu-c)
  (:import-from :cm-c :decompose-declaration)
  (:shadowing-import-from :cm-glsl :switch-reader
			  :cl-reader :cm-reader))

;;; ==================
;;;    swap packages
;;; ===================

;; c-mera c swap 
(defpackage :cms-c
  (:use))

;; c-mera c++ swap
(defpackage :cms-c++
  (:use)
  (:nicknames :cms-cxx))

;; c-mera cuda swap
(defpackage :cms-cuda
  (:use))

;; c-mera opencl swap
(defpackage :cms-opencl
  (:use))

;; c-mera glsl swap
(defpackage :cms-glsl
  (:use))


;;; =====================
;;;    asdf systems
;;; ====================


;; core system
(asdf:defsystem c-mera
  :name "c-mera"
  :version "0.0.2"
  :serial t
  :components ((:file "src/c-mera/version")
	       (:file "src/c-mera/cmd")
	       (:file "src/c-mera/nodes")
	       (:file "src/c-mera/utils")
	       (:file "src/c-mera/traverser")
	       (:file "src/c-mera/pretty")
	       (:file "src/c-mera/c-mera"))
  :depends-on ("net.didierverna.clon"))


;;; backends

(asdf:defsystem cm-c
  :name "c-mera c"
  :version "0.0.2"
  :serial t
  :components ((:file "src/c-mera/c-mera")
	       (:file "src/c/utils")
	       (:file "src/c/nodes")
               (:file "src/c/traverser")
               (:file "src/c/pretty")
	       (:file "src/c/syntax")
	       (:file "src/c/reader")
	       (:file "src/c/cm-c"))
  :depends-on ("c-mera"))

(asdf:defsystem cm-c++
  :name "c-mera c++"
  :version "0.0.2"
  :serial t
  :components ((:file "src/c/cm-c")
	       (:file "src/cxx/nodes")
	       (:file "src/cxx/traverser")
	       (:file "src/cxx/syntax")
	       (:file "src/cxx/pretty")
	       (:file "src/cxx/reader")
	       (:file "src/cxx/cm-cxx"))
  :depends-on ("c-mera" "cm-c"))

(asdf:defsystem cm-cuda
  :name "c-mera cuda"
  :version "0.0.2"
  :serial t
  :components ((:file "src/cxx/cm-cxx")
	       (:file "src/cuda/nodes")
	       (:file "src/cuda/syntax")
	       (:file "src/cuda/pretty")
	       (:file "src/cuda/cm-cuda"))
  :depends-on ("c-mera" "cm-c" "cm-c++"))

(asdf:defsystem cm-opencl
  :name "c-mera opencl"
  :version "0.0.2"
  :serial t
  :components ((:file "src/cxx/cm-cxx")
	       (:file "src/opencl/nodes")
	       (:file "src/opencl/syntax")
	       (:file "src/opencl/pretty")
	       (:file "src/opencl/cm-opencl"))
  :depends-on ("c-mera" "cm-c" "cm-c++"))

(asdf:defsystem cm-glsl
  :name "c-mera glsl"
  :version "0.0.2"
  :serial t
  :components ((:file "src/c/cm-c")
	       (:file "src/glsl/nodes")
	       (:file "src/glsl/syntax")
	       (:file "src/glsl/pretty")
	       (:file "src/glsl/cm-glsl"))
  :depends-on ("c-mera" "cm-c"))


;; user systems

(asdf:defsystem cmu-c
  :name "c-mera user c"
  :version "0.0.2"
  :components ((:file "src/c/cmu-c"))
  :depends-on ("c-mera"
	       "cm-c"))

(asdf:defsystem cmu-c++
  :name "c-mera user c++"
  :version "0.0.2"
  :components ((:file "src/cxx/cmu-cxx"))
  :depends-on ("c-mera"
	       "cm-c"
	       "cmu-c"
	       "cm-c++"))

(asdf:defsystem cmu-cuda
  :name "c-mera user cuda"
  :version "0.0.2"
  :depends-on ("c-mera"
	       "cm-c"
	       "cmu-c"
	       "cm-c++"
	       "cmu-c++"
	       "cm-cuda"))

(asdf:defsystem cmu-opencl
  :name "c-mera user opencl"
  :version "0.0.2"
  :depends-on ("c-mera"
	       "cm-c"
	       "cmu-c"
	       "cm-c++"
	       "cmu-c++"
	       "cm-opencl"))

(asdf:defsystem cmu-glsl
  :name "c-mera user glsl"
  :version "0.0.2"
  :depends-on ("c-mera"
	       "cm-c"
	       "cmu-c"
	       "cm-glsl"))

;; swap systems

(asdf:defsystem cms-c
  :name "c-mera swap c"
  :version "0.0.2"
  :depends-on ("cmu-c"))

(asdf:defsystem cms-c++
  :name "c-mera swap c++"
  :version "0.0.2"
  :depends-on ("cmu-c++"))

(asdf:defsystem cms-cuda
  :name "c-mera swap cuda"
  :version "0.0.2"
  :depends-on ("cmu-cuda"))

(asdf:defsystem cms-opencl
  :name "c-mera swap opencl"
  :version "0.0.2"
  :depends-on ("cmu-opencl"))

(asdf:defsystem cms-glsl
  :name "c-mera swap glsl"
  :version "0.0.2"
  :depends-on ("cmu-glsl"))
