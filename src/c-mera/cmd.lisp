(in-package :c-mera)

(defun add-cmdline-definition (str)
  (let* ((=pos (position #\= str))
	 (white '(#\space #\newline #\tab))
	 (key str)
	 val)
    (when =pos
      (setf key (subseq str 0 =pos))
      (setf val (string-trim white (subseq str (1+ =pos)))))
    (setf key (string-trim white key))
    (eval `(defparameter ,(read-from-string (format nil "*~a*" key)) ,val))))

(defmacro synopsis (&body syn)
  "Forwards all arguments to CLON:DEFSYNOPSIS.
   Also analyzes the list of statements to find options with and w/o arguments.
   This data is then used for cmdline-reordering via CLON-SHUFFLE to provide a more flexible notation."
  (let (flags-short flags-long opts-short opts-long)
    (flet ((short (list)
	     (aref (cadr (member :short-name list)) 0))
	   (long (list)
	     (cadr (member :long-name list))))
      (loop for x in syn
	do (progn
	     (when (find (first x) (list 'flag))
	       (let ((s (short x))
		     (l (long x)))
		 (if s (push s flags-short))
		 (if l (push l flags-long))))
	     (when (find (first x) (list 'stropt))
	       (let ((s (short x))
		     (l (long x)))
		 (if s (push s opts-short))
		 (if l (push l opts-long))))))
      `(progn
	 (defparameter *clon-shuffle-flags* (list ,@flags-short))
	 (defparameter *clon-shuffle-opts*  (list ,@opts-short))
	 (defparameter *clon-shuffle-flags-long* (list ,@flags-long))
	 (defparameter *clon-shuffle-opts-long*  (list ,@opts-long))
	 (net.didierverna.clon:defsynopsis
	     ,@syn)))))

(synopsis
 (:postfix "inputfile")
 (text :contents "A source-to-source compiler.")
 (flag :short-name "h" :long-name "help"    :description "Print this help and exit.")
 (flag :short-name "V" :long-name "version" :description "Print c-mera version and exit.")
 (stropt :short-name "i" :long-name "in"    :description "Input file name (can also be given as non-option argument).")
 (stropt :short-name "o" :long-name "out"   :description "Output file name (if not specified we print to stdout).")
 (stropt :short-name "D" :long-name "defparameter"
	 :description "Define given value as parameter as string. -Dfoo=9 will have the effect of (defparameter *foo* \"9\").")
 (stropt :short-name "E" :long-name "eval" ; I would really like to *not* have a short option for this, but it seems that clon does not work without a short-option name.
	 :description "Evaluate the given form before reading the input file.")
 (flag :short-name "g" :long-name "debug"   :description "Add debugging information such as line numbers in the output.")
 (flag :short-name "v" :long-name "verbose" :description "Be verbose."))

(defun clon-shuffle (input)
  "Make C-Mera's cmdline handling more conform to GNU standards by allowing non-option arguments to be interspersed with options.
   *CLON-SHUFFLE-FLAGS are options that do not take parameters,
   *CLON-SHUFFLE-OPTS are options that take parameters.
   Knowing this the order of the arguments can be changed safely."
  (let (opts
	args
	(expecting-arg nil))
    (loop while input
      do (let ((arg (first input)))
	   (cond
	     ;; when expecting an argument the value has to be pushed to the option list, regardless of form
	     (expecting-arg
	      (setf expecting-arg nil)
	      (push arg opts))
	     ;; the option terminator. push all remaining elements to the argument list
	     ((string-equal arg "--")
	      (loop for a in input do (push a args))
	      (setf input nil))
	     ;; a long option. if it takes an argument set appropriate state for when reading it.
	     ((and (> (length arg) 2) (char= (aref arg 0) #\-) (char= (aref arg 1) #\-))
	      (when (find (subseq arg 2) *clon-shuffle-opts-long* :test #'string-equal)
		(setf expecting-arg t))
	      (push arg opts))
	     ;; a (series of) short option(s). ditto.
	     ((and (> (length arg) 1) (char= (aref arg 0) #\-))
	      (loop for c across (subseq arg 1)
		do (if (find c *clon-shuffle-opts*)
		       (setf expecting-arg t)))
	      (push arg opts))
	     ;; anything else is a non-option argument
	     (t
	      (push arg args)))
	   (if input (setf input (rest input)))))
    (append (reverse opts) (reverse args))))

(defmacro parse-cmdline (cmdline reader)
  `(let ((cmdline ,cmdline))
     (block break-parse
       (net.didierverna.clon:make-context :cmdline (cons (first cmdline) (clon-shuffle (rest cmdline))))
       (flet ((s= (a b c) (or (string-equal a b) (string-equal a c))))
	 (let ((in    (net.didierverna.clon:getopt :short-name "i"))
	       (out   (net.didierverna.clon:getopt :short-name "o"))
	       (debug (net.didierverna.clon:getopt :short-name "g"))
	       (verb  (net.didierverna.clon:getopt :short-name "v"))
	       (args  (net.didierverna.clon:remainder)))
	   (declare (ignore verb))
	   (if in (push in args))
	   (net.didierverna.clon:do-cmdline-options (option name value source)
	     (cond ((s= name "h" "help")
		    (net.didierverna.clon:help)
		    (return-from break-parse (values nil nil nil)))
		   ((s= name "V" "version")
		    (print-version)
		    (return-from break-parse (values nil nil nil)))
		   ((s= name "D" "defparameter")
		    (add-cmdline-definition value))
		   ((s= name "E" "eval")
		    (,reader value))
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
	   (values in out debug))))))
