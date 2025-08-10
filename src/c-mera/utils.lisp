;;;; Utilities
(in-package :c-mera)

;;; Inverts the case when interning a string.
;;; This is needed to keep the correct internal (inverted) case.
;;; Use this function for all c depending code.
(defun cintern (name &optional package)
  (macrolet ((case-test (test string)
	       `(reduce #'(lambda (a b) (and a b))
			(mapcar (lambda(x) (or (not (both-case-p x)) (,test x)))
				(coerce ,string 'list)))))
    (let ((string (cond ((case-test upper-case-p name) (string-downcase name))
			((case-test lower-case-p name) (string-upcase name))
			(t name))))
      (if package
	  (intern string package)
	  (intern string)))))

(defmacro defsyntax (tags packages lambda-list &body body)
  "Define syntax for tags from specific packages"
  (let ((tags (if (listp tags) tags (list tags))))
    `(progn
       ,@(loop for i in tags append
	   (loop for k in packages collect
	     `(let ((tag ',i))
		(declare (ignorable tag))
		(defmacro ,(intern (format nil "~:@(~a~)" i) k) ,lambda-list
		  ,@body)
		(export ',(intern (format nil "~:@(~a~)" i) k) ,k)))))))

;; check if function or macro is bound globally or lexically
(defun fboundp! (function &optional env)
  "Check for globally of lexically bound function or macro"
  #+sbcl (sb-cltl2::function-information function env)
  #+clozure (ccl::function-information function env)
  #+ecl (or (fboundp function)
	    (find function (rest env)
		  :test #'(lambda (x y) (eql x (car y)))))
  #-(or sbcl clozure ecl)
  (error "Missing implementation of fboundp! for your lisp implementation."))

(defun vboundp! (variable &optional env)
  "Check for globally or lexically bound variables or symbol macros"
  #+sbcl (sb-cltl2::variable-information variable env)
  #+clozure (ccl::variable-information variable env)
  #+ecl (or (boundp variable)
	    (find variable (first env)
		  :test #'(lambda (x y) (eql x (car y)))))
  #-(or sbcl clozure ecl)
  (error "Missing implementation of vboundp! for your lisp implementation."))

;;;; Quoty
(defmacro quoty (item &environment env)
  "Quote undefined symbols, build functions from unknown lists"
  (cond ((eql item nil)
	 (values))
	((listp item)
	 (if (or (listp (first item))
		 (not (fboundp! (first item) env)))
	     `(function-call
	       (make-node ,(first item))
	       (make-nodelist ,(rest item)))
	     item))
	((symbolp item)
	 (if (vboundp! item env)
	     item
	     `',item))
	(t item)))

;;; the list nodes
(defmacro make-nodelist (items &key (prepend nil) (quoty nil))
  "Build general or specific nodelist."
  (let ((prepend (if (listp prepend) prepend `(,prepend))))
    `(nodelist
      (list ,@(loop for i in items collect
		(if prepend
		    (if quoty
			`(,@prepend (quoty ,i))
			`(,@prepend ,i))
		    `(make-node-function (quoty ,i))))))))
		    ;`(make-node ,i)))))))

;;; the atom lists
;(defmacro make-node (item)
;  "Try to identify and make node object"
;  (cond
;    ;; Item is not an atom
;    ((listp item)
;     (if (listp (first item))
;	 ;; List with multiple sublists/macros
;	 `(make-nodelist ,item)
;	 ;; Possibly a macro
;	 `(make-node-function (quoty ,item))))
;    (t `(make-node-function (quoty ,item)))))

(defmacro make-node (item)
  "Try to identify and make node object"
    `(make-node-function (quoty ,item)))

;;;  the atoms
(defun make-node-function (item)
  "Build Node from symbol after expansion"
  (cond
    ;; no item
    ((eql item nil) (values))
    ;; item is already c-mera node
    ((typep item 'node) item)
    ;; Item is most possibly an atom or a quoted symbol
    ((symbolp item) (identifier item))
    ((numberp item) (number-literal item))
    ((stringp item) (string-literal item))
    ((characterp item) (character-literal item))
    ;; Item is not a known atom
    (t (error "C-Mera encountered an unknown atom: ~a" item))))

;;; From "let over lambda":
(defun flatten (x)
  "Flatten cascaded list"
  (labels ((rec (x acc)
	     (cond ((null x) acc)
		   ((atom x) (cons x acc))
		   (t (rec	   
		       (car x)
		       (rec (cdr x) acc))))))
    (rec x nil)))


;;; Ensure list
(defmacro ensure-list (item &body body)
  `(let ((,item (if (listp ,item) ,item '(,item))))
     ,@body))

;;; Context switch
(defun build-context-switches (&key user-package symbols)
  (let ((lisp-macrolet
	 (loop for i in symbols collect
	   (let ((symbol (format nil "~a" i)))
	     ;; get <user-package>::<symbol> name
	     `(,(intern symbol user-package) (&rest rest)
	       ;; map to cl::<symbol> 
	       (list* ',i rest)))))
	(cm-macrolet
	 (loop for i in symbols collect
	   (let ((symbol (intern (format nil "~a" i) user-package)))
	     ;; get <user-package>::<symbol> name
	     `(,symbol (&rest rest)
	       ;; map to its macroexpansion
	       ;; -> expansion without local environment
	       (macroexpand-1 `(,',symbol ,@rest))))))
	(lisp-switch (intern "LISP" user-package))
	(cm-switch (intern "CM" user-package)))
    (eval
     `(progn
	;; define macro user-package::lisp
   	;; use common-lisp functions for macrolet scope
	(defmacro ,lisp-switch (&body body)
	  `(macrolet ,',lisp-macrolet ,@body))
	
	;; define macro user-package::cm
	;; use c-mera functions for macrolet scope
	;; used to switch back within lisp-scope
	(defmacro ,cm-switch (&body body)
	  `(macrolet ,',cm-macrolet (progn ,@body)))))))

(defun build-swap-package (&key user-package swap-package symbols)
  (eval
   `(progn
      ,@(loop for i in symbols collect
	  (let ((cm-symbol (intern (format nil "~a" i) user-package))
		(sw-symbol (intern (format nil "~a" i) swap-package)))
	    `(defmacro ,sw-symbol (&rest rest)
	       (macroexpand-1 `(,',cm-symbol ,@rest))))))))


;;; globally used hashes
(defvar *ignore-node* (make-hash-table))
(defvar *proxy-node* (make-hash-table))

(defvar *enabled-warnings* '())
(defvar *suppressed-warnings* '())


;;; =================================
;;;    currently unused
;;; =================================

;;; be verbose and print info text for 'using functions..' and so on
(defparameter *be-verbose* nil)


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

(defparameter *chars-per-line* '()) ;; STack of stream-to-line mapppings

;;; Must be prepared with count-lines before usage.
(defun get-line (stream)
  "get the current line number of the stream"
  (let ((fpos (file-position stream)))
    (second (car (remove-if #'(lambda (x) (< (car x) fpos))
			    (first *chars-per-line*))))))



(defparameter *current-file* '())   ; Stack of files in process
;; moved for clozure
;;(defparameter *chars-per-line* '()) ; Stack of Stream to Line mapping

;;; Contains mapping of S-Expr to line and file informations.
(defparameter *line-hash* (make-hash-table :test 'equal))
(defparameter *file-hash* (make-hash-table :test 'equal))
