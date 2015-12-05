#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
				       (user-homedir-pathname))))
    (when (probe-file quicklisp-init)
      (load quicklisp-init)))

(ql:quickload :getopt)

(cl:defpackage :cgen
  (:use :common-lisp :getopt)
  (:export :add-qualifier :defnodes :defhandler :defelement :defnodemacro :make-node
	   :defstatement :defexpression
	   :prepare-handler
	   
	   ;;pretty printing
	   :defprettymethod :defproxyprint :with-proxynodes
	   :with-pp :++indent :--indent :stream :item :indent
	   :pop-sign :top-sign :push-sign
	   :pop-info :top-info :push-info
	   :make-proxy :del-proxy

	   ;;tests
	   :simple-print
	   :switch-reader
	   :tag))

(cl:defpackage :oclgen
  (:use :common-lisp :cgen))

(cl:defpackage :cugen
  (:use :common-lisp :cgen))

(cl:defpackage :shgen
  (:use :common-lisp :cgen))

(cl:defpackage :glslgen
  (:use :common-lisp :cgen))

(cl:defpackage :cxxgen
  (:use :common-lisp :cgen))

(cl:defpackage :cg-user
  (:import-from :common-lisp :nil)
  (:import-from :cgen :simple-print :switch-reader)
  (:export :deflmacro :defun :defmacro :cgen :lisp :cintern :use-functions :use-variables))

(cl:defpackage :cg-swap)

(asdf:defsystem cgen
  :name "cgen"
  :version "0.0.1"
  :serial t
  :components ((:file "src/core/cl-loader") ;;cg-user imports
	       (:file "src/core/utils")
	       (:file "src/core/ast-utils")
	       (:file "src/core/ast-nodes")
	       (:file "src/core/ast-syntax")
	       (:file "src/core/ast-traverser")
	       (:file "src/core/ast-pretty")
	       (:file "src/core/pre-processing")
	       (:file "src/core/cgen"))
  
  :depends-on ("sb-posix" "sb-introspect"))

(asdf:defsystem glslgen
  :name "glslgen"
  :version "0.0.1"
  :serial t
  :components ((:file "src/glsl/glslgen")
               (:file "src/glsl/gl-symbols"))
  :depends-on ("cgen"))

(asdf:defsystem shgen
  :name "shgen"
  :version "0.0.1"
  :serial t
  :components ((:file "src/shader/shgen"))
  :depends-on("glslgen"))

(asdf:defsystem cxxgen
  :name "cxxgen"
  :version "0.0.1"
  :serial t
  :components ((:file "src/cxx/cxxgen"))
  :depends-on ("cgen"))

(asdf:defsystem cugen
  :name "cugen"
  :version "0.0.1"
  :serial t
  :components ((:file "src/cuda/cugen"))
  :depends-on ("cxxgen"))

(asdf:defsystem oclgen
  :name "oclgen"
  :version "0.0.1"
  :serial t
  :components ((:file "src/ocl/oclgen"))
  :depends-on ("cxxgen"))

(asdf:defsystem cg-user
  :name "cg-user"
  :version "0.0.1"
  :components ((:file "src/usr/cgu-base")) ;basic functions and macros
  :depends-on ("cgen"))

(asdf:defsystem cg-swap
  :name "cg-swap"
  :version "0.0.1"
  :depends-on ("cgen"))
