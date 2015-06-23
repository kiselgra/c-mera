;;;; Main cgen file
;;;; Contains function for reading and printing the cgen ast.

(in-package :cgen)

(defun read-in (file &optional &key (debug nil))
  "reads cgen file and returns the cgen-ast"
  (push (count-lines file) *chars-per-line*)
  (push file *current-file*)
  (let ((nodes nil)
	(*readtable* (copy-readtable nil)))
    ;; Starts pre-processing for every symbol with leading space-character
    (set-macro-character #\Space #'pre-process)
    (set-macro-character #\Tab #'pre-process)
    ;; Stores line and file inforation in global hash
    (if debug
	(set-macro-character #\( #'line-number-reader))
 
    ;;TODO repair
     ;;(sb-impl::set-cat-entry #\^ sb-impl::+char-attr-single-escape+)
     ;;(sb-impl::set-cmt-entry #\^ nil)
     ;;(sb-impl::set-cat-entry #\\ sb-impl::+char-attr-constituent+)
    
    (setf (readtable-case *readtable*) :invert) ;'preserve' original case
      (with-open-file (in file)
	(loop for s-expr = (read in nil nil nil)
	   while s-expr do
	     (let ((evaluated (eval s-expr)))
	       (cond
		 ((listp evaluated)
		  (if (gethash (class-of (first evaluated)) *node*)
		      (setf nodes (append nodes evaluated))))
		 (t
		  (if (gethash (class-of evaluated) *node*)
		      (setf nodes (append nodes (list  evaluated)))))))))
      (pop *current-file*)
      (pop *chars-per-line*)
      nodes))

(defun parse-cmdline (cmdline)
  (multiple-value-bind (args opts) (getopt cmdline
					   '(("in" :required)
					     ("out" :required)
					     ("debug" :none)
					     ("g" :none)
					     ("verbose" :none)
					     ("h" :none help)))
    (flet ((flag-set (flag)
	     (member flag opts :key #'first :test #'string=))
	   (opt-val (opt)
	     (cdr (first (member opt opts :key #'first :test #'string=)))))
      (if (flag-set "verbose")
	  (setf *be-verbose* t))
      (let ((debug (if (or (flag-set "g") (flag-set "debug")) :debug nil)))
	(cond ((flag-set "h")
		(values nil nil))
	       ;; here are a few different cases covering some common gcc style invocations, too.
	       ;; --in and --out given
	       ((and (flag-set "in")
		     (flag-set "out"))
		(values (opt-val "in")
			(opt-val "out")
			debug))
	       ;; --in not given (taken from argument 1), out may be nil, too.
	       ((and (= (length args) 1)
		     (not (flag-set "in")))
		(values (first args)
			(opt-val "out")
			debug))
	       ;; --in is given but out may not be
	       ((and (= (length args) 0)
		     (flag-set "in"))
		(values (opt-val "in")
			(opt-val "out")
			debug))
	       (t (error "unhandled case in parse cmdline.")))))))

;;; Defines the start-up command of the lisp-executable.
(defmacro define-script-command (&rest extra-traverser)
  (let ((extras (if extra-traverser
		    (loop for i in extra-traverser collect
			 `(traverser (make-instance ',i) tree 0)))))
    `(defun script-command (args)
       (labels ((print-usage ()
		  (format t (concatenate 'string
					 "~&Usage: $code-generator [OPTION...] [inputfile].~%"
					 "Options:~%"
					 "  -i, --in=src-file    Input file. A single non-option argument is treated as -i.~%"
					 "  -o, --out=dest-file  Output file. Output is written to stdout if not given.~%"
					 "  -d, --debug          Generate File with source line information.~%"
					 "  -v, --verbose        Verbose output. ~%"
					 "~%"
					 "Mandatory or optional arguments to long options are also mandatory or optional~%"
					 "for any corresponding short options.~%"))))
	 (multiple-value-bind (input output debug) (parse-cmdline args)
	   (if (not input)
	       (print-usage)
	       (let ((tree nil)
		     (nodelist-cleanup (make-instance 'nodelist-traverser))
		     (else-if-cleanup (make-instance 'else-if-traverser))
		     (rename (make-instance 'renamer))
		     (decl-block (make-instance 'decl-blocker))
		     (if-block (make-instance 'if-blocker))
		     ;(debug-tree (make-instance 'debug-traverser))
		     (pprint (make-instance 'pretty-printer)))
		 (setf tree (build-ast (read-in input :debug debug)))
		 ,@extras
		 (traverser nodelist-cleanup tree 0)
		 (traverser else-if-cleanup tree 0)
		 (traverser rename tree 0)
		 (traverser decl-block tree 0)
		 (traverser if-block tree 0)
		 ;(traverser debug-tree tree 0)
		 (if output
		     (with-open-file
			 (stream output
				 :direction :output
				 :if-exists :supersede
				 :if-does-not-exist :create)
		       (setf (slot-value pprint 'stream) stream)
		       (traverser pprint tree 0))
		     (progn
		       (setf (slot-value pprint 'stream) *standard-output*)
		       (traverser pprint tree 0)
		       (format t "~&")))
		 )))))))

;;; Standard start command (without extra traversers)
(define-script-command)


;;; Simply prints the ast, intended for REPL usage.
(defun simple-print (tree)
  "Pretty prints cgen-ast tree"
  (let ((nc (make-instance 'nodelist-traverser))
	(ei (make-instance 'else-if-traverser))
	(db (make-instance 'decl-blocker))
	(rn (make-instance 'renamer))
	(pp (make-instance 'pretty-printer)))
	(progn
	  (traverser nc tree 0)
	  (traverser ei tree 0)
	  (traverser db tree 0)
	  (traverser rn tree 0)
	  (traverser pp tree 0))))

;;; Used to build the executables.
(defun save (x)
  (labels ((dump-start ()
	     (in-package :cg-user)
	     (setf (readtable-case *readtable*) :invert)
	     (cgen::script-command (rest sb-ext:*posix-argv*))))
    (sb-ext:save-lisp-and-die
     x 
     :toplevel #'dump-start 
     :executable t)))

