;;;; Some helper functions

(in-package :cgen)

(defmacro get-body (arg-list)
  "returns the symbol of the &body or &rest parameter"
  `(rest (member-if #'(lambda (x) (or (eql '&body x)
				      (eql '&rest x)))
		    ,arg-list)))

(defmacro get-args (arg-list)
  "returns the parameters without keys and the body/rest parameter"
  `(if (get-body ,arg-list)
       (reverse (rest (member-if #'(lambda (x) (or (eql '&body x)
						   (eql '&rest x)))
				 (reverse
				  (remove '&environment
					  (remove '&optional
						  (remove '&key 
							  ,arg-list)))))))
       (remove '&environment
	       (remove '&optional
		       (remove '&key
			       ,arg-list)))))

(defun clear (sym chars)
  "remove specific chars from symbol"
  (if chars
      (intern (remove (first chars)
		      (symbol-name
		       (clear sym (rest chars)))
		      :test #'(lambda (a b)
				(eql a b))))
      sym))

(defun crop (chars syms)
  "get specific chars from symbol"
  (let ((str ""))
    (loop for k in chars do
	 (loop for i in syms do
	      (setf str
		    (concatenate 'string
				 str
				 (remove k (symbol-name i)
					 :test #'(lambda (a b) 
						   (not (eql a b))))))))
    (intern str)))

(defmacro case-test (test string)
  `(eval `(and ,@(mapcar (lambda(x) (or (not (both-case-p x)) (,test x))) (coerce ,string 'list)))))

(defun fix-case (parent child)
  (let ((pu (case-test upper-case-p parent))
	(pl (case-test lower-case-p parent))
	(cu (case-test upper-case-p child))
	(cl (case-test lower-case-p child)))
    (let ((parent (cond ((or (and pu cl) (and pu (not (or cu cl)))) (intern (string-downcase parent)))
			((or (and pl cu) (and pl (not (or cu cl)))) (intern (string-upcase parent)))
			(t (intern parent))))
	  (child (cond ((or (and pu cl) (and (not (or pu pl)) cl)) (intern (string-upcase child)))
		       ((or (and pl cu) (and (not (or pu pl)) cu)) (intern (string-downcase child)))
		       (t (intern child)))))
      (list parent child))))

;;;from "let over lambda":
(defun flatten (x)
  "flatten cascaded list"
  (labels ((rec (x acc)
             (cond ((null x) acc)
                   ((atom x) (cons x acc))
                   (t (rec	   
                        (car x)
                        (rec (cdr x) acc))))))
    (rec x nil)))

;;; Used for source-location
(defun count-lines (file)
  "count lines from file and store character per line in global hash"
  (with-open-file (in file)
    (let ((nchars 0)
	  (nlines 1)
	  (chars-per-line '()))
      (loop for char = (read-char in nil nil nil)
	 while char do
	   (setf nchars (1+ nchars))
	   (if (eql char #\NewLine)
	       (progn
		 (push `(,nchars ,nlines) chars-per-line)
		 (setf nlines (1+ nlines)))))
      (push `(,nchars ,nlines) chars-per-line)
      (reverse chars-per-line))))

;;; Must be prepared with count-lines before usage.
(defun get-line (stream)
  "get the current line number of the stream"
  (let ((fpos (file-position stream)))
    (second (car (remove-if #'(lambda (x) (< (car x) fpos))
			    (first *chars-per-line*))))))

;;; Switch to the cgen-reader in the repl
(defparameter *readtable-backup* (copy-readtable nil))
(defparameter *cgen-reader* 'cl)

(defun switch-reader (&key (debug nil))
  "switch to the cgen-reader and back"
  (cond ((eql *cgen-reader* 'cl)
	 (setf *cgen-reader* 'cgen)
	 (if debug
	     (set-macro-character #\( #'line-number-reader))
	 (set-macro-character #\Space #'pre-process)
	 (setf (readtable-case *readtable*) :invert))
	((eql *cgen-reader* 'cgen)
	 (setf *cgen-reader* 'cl)
	 (setf *readtable* *readtable-backup*))))

;;; be verbose and print info text for 'using functions..' and so on
(defparameter *be-verbose* nil)
