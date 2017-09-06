(in-package :c-mera)

(defmacro define-reader (&key file-reader string-reader macro-character)
  `(progn
     (defun ,file-reader (file &key (debug nil))
       "Read c-mera source file and return AST"
       (let ((asts nil)
	     (*readtable* (copy-readtable nil)))
	 ;; Preserve case, and parse convenient stuff
	 (setf (readtable-case *readtable*) :invert)
	 ,@macro-character
	 ;(handler-case
	     (with-open-file (in file)
	       (loop for s-expr = (read in nil nil nil) while s-expr do ;; TODO CHECK call
		    (let* ((s-expr (eval s-expr))
			   (evaluated (if (listp s-expr)
					  s-expr
					  (list s-expr))))
		      (when (typep (car evaluated) 'node)
			(setf asts (append asts evaluated))))))

	   ;; TODO
	   ;; Standard clozure error handling breaks console.
	   ;; This hanlder-case  is only a tentative fix 
	   ;#+clozure (error (err) (let ((*print-pretty* t))
	   ;			    (format *error-output* "~a" err))))
	 ;; Return single AST
	 (nodelist asts)))
     (defun ,string-reader (str)
       "Rread c-mera source string and return AST"
       (let ((asts nil)
	     (*readtable* (copy-readtable nil)))
	 ;; Preserve case, and parse convenient stuff
	 (setf (readtable-case *readtable*) :invert)
	 ,@macro-character
	 ;(handler-case
	     (let* ((s-expr (eval (read-from-string str)))
		    (evaluated (if (listp s-expr)
				   s-expr
				   (list s-expr))))
	       (when (typep (car evaluated) 'node)
		 (setf asts evaluated)))

	   ;; TODO
	   ;; Standard clozure error handling breaks console.
	   ;; This hanlder-case  is only a tentative fix 
	   ;#+clozure (error (err) (let ((*print-pretty* t))
	   ;			    (format *error-output* "~a" err))))
	 ;; Return single AST
	 (nodelist asts)))))
	     
  

;;; Defines the start-up command of the lisp-executable.
(defmacro define-processor (&key name file-reader string-reader extra-traverser)
  (let ((extras (loop for i in extra-traverser collect
			 `(traverser (make-instance ',i) tree 0))))
    `(defun ,name (args)
       (multiple-value-bind (input output debug) (parse-cmdline args ,string-reader)
	 (when input
	   (let ((tree nil)
		 (pprint (make-instance 'pretty-printer)))
	     (setf tree (,file-reader input))
	     ,@extras
	     (if output
		 (with-open-file
		     (stream output :direction :output
				    :if-exists :supersede
				    :if-does-not-exist :create)
		   (setf (slot-value pprint 'stream) stream)
		   (traverser pprint tree 0))
		 (progn
		   (setf (slot-value pprint 'stream) *standard-output*)
		   (traverser pprint tree 0)
		   (format t "~&")))
	     ))))))

;;; Used to build the executables.
(defmacro save-generator (&key name start-function in-package)
  `(defun ,name (name)
     (labels ((dump-start ()
		(in-package ,in-package)
		(setf (readtable-case *readtable*) :invert)
		#+sbcl (,start-function sb-ext:*posix-argv*)
		#+clozure (handler-case
			      (,start-function ccl::*command-line-argument-list*)
			    (error (err) (let ((*print-pretty* t))
					   (format *error-output* "~a" err)
					   (ccl::quit 1))))
		#+ecl (,start-function (loop for i from 0 below (si:argc) collect (si:argv i)))
		#-(or sbcl clozure ecl)
		(error "Missing implementation of 'save-generator' for your lisp implementation") 
		))
       ;; use local quicklisp
       #-quicklisp
       (let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
	 (when (probe-file quicklisp-init)
	   (load quicklisp-init)))
       (net.didierverna.clon:dump name dump-start))))


;;; debug stuff
(defun print! (tree)
  (let ((pp (make-instance 'pretty-printer))
	(d  (make-instance 'debug-traverser)))
    (traverser d  tree 0)
    (traverser pp tree 0)))

(defparameter *c-mera-reader* 'cm)
(defvar *readtable-backup* (copy-readtable nil))

(defmacro define-switch (&key name macro-character)
  "Define a c-mera reader switch (in repl)
   allowing preprocessing and mixed case"
  `(defun ,name (&key (debug nil))
     (cond ((eql *c-mera-reader* 'cl)
	    (setf *c-mera-reader* 'cm)
	    ;; TODO when debug
	    ,@macro-character
	    (setf (readtable-case *readtable*) :invert))
	   ((eql *c-mera-reader* 'cm)
	    (setf *c-mera-reader* 'cl)
	    (setf *readtable* *readtable-backup*))
	   (t (error "Unknown c-mera reader status: ~a" *c-mera-reader*)))))

(defmacro define-switches (&key cl-reader cm-reader macro-character)
  "Define c-mera/common-lisp reader switches"
  `(progn
     (defun ,cl-reader ()
       (setf *c-mera-reader* 'cl)
       (setf *readtable* *readtable-backup*))
     (defun ,cm-reader ()
       (setf *c-mera-reader* 'cm)
       ,@macro-character
       (setf (readtable-case *readtable*) :invert))))
