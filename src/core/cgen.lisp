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


; does not work:
; (net.didierverna.clon:nickname-package :clon)

(net.didierverna.clon:defsynopsis
    (:postfix "inputfile")
    (text :contents "A source-to-source compiler.")
  (flag :short-name "h" :long-name "help"    :description "Print this help and exit.")
  (stropt :short-name "i" :long-name "in"      :description "Input file name (can also be given as non-option argument).")
  (stropt :short-name "o" :long-name "out"     :description "Output file name (if not specified we print to stdout).")
  (flag :short-name "g" :long-name "debug"   :description "Add debugging information such as line numbers in the output.")
  (flag :short-name "v" :long-name "verbose" :description "Be verbose."))

(defun parse-cmdline (cmdline)
  (net.didierverna.clon:make-context)
  (flet ((s= (a b c) (or (string-equal a b) (string-equal a c))))
    (let ((in    (net.didierverna.clon:getopt :short-name "i"))
	  (out   (net.didierverna.clon:getopt :short-name "o"))
	  (debug (net.didierverna.clon:getopt :short-name "g"))
	  (verb  (net.didierverna.clon:getopt :short-name "v"))
	  (args  (net.didierverna.clon:remainder)))
      (if in (push in args))
      (net.didierverna.clon:do-cmdline-options (option name value source)
	(cond ((s= name "h" "help")
	       (net.didierverna.clon:help)
	       (return-from parse-cmdline (values nil nil nil)))
	      (t (format t "Unnrecognized option ~a.~%" name))))
      (cond ((> (length args) 1)
	     (setf in nil)
	     (net.didierverna.clon:help)
	     (format t "Excess command line arguments.~%"))
	    ((= (length args) 0)
	     (setf in nil)
	     (net.didierverna.clon:help)
	     (format t "No input specified.~%"))
	    (t (setf in (first args))))
	(values in out debug))))

;;; Defines the start-up command of the lisp-executable.
(defmacro define-script-command (&rest extra-traverser)
  (let ((extras (if extra-traverser
		    (loop for i in extra-traverser collect
			 `(traverser (make-instance ',i) tree 0)))))
    `(defun script-command (args)
       (multiple-value-bind (input output debug) (parse-cmdline args)
	 (when input
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
	     ))))))

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
    (net.didierverna.clon:dump x dump-start)))


