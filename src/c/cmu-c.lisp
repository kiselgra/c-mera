(in-package :cmu-c)

;;; Inverts the case when interning a string.
;;; This is needed to keep the correct internal (inverted) case.
;;; Use this function for all c depending code.
(defun cintern (name &optional package)
  (lisp
   (macrolet ((case-test (test string)
		`(reduce #'(lambda (a b) (and a b))
			 (mapcar (lambda(x) (or (not (both-case-p x)) (,test x)))
				 (coerce ,string 'list)))))
     (let ((string (cond ((case-test upper-case-p name) (string-downcase name))
			 ((case-test lower-case-p name) (string-upcase name))
			 (t name))))
       (if package
	   (intern string package)
	   (intern string))))))

;;standard functions/macros
(defmacro when (test &body forms)
  `(if ,test
	   ,(cl:if (cadr forms)
			   `(progn ,@forms)
			   (car forms))))

;;; new cons with (t ...) and without "else {}"
(defmacro cond (&rest clauses)
  (let ((head (first clauses)))
    (lisp
     (when head
       (if (eql (first head) t)
	   (cons 'progn (cdr head))
	   `(if ,(first head)
		,(cons 'progn (cdr head))
		,(if (cdr clauses)
		     `(cond ,@(cdr clauses)))))))))

(defmacro 1+ (number)
  `(+ ,number 1))

(defmacro 1- (number)
  `(- ,number 1))


;; Code proposed by plops on issue #17
;; https://github.com/kiselgra/c-mera/issues/17
(defun replace-newline-with-backslash-newline (string)
  ;; this is from common lisp cookbook i got it from here:
  ;; http://stackoverflow.com/questions/4366668/str-replace-in-lisp
  ;; i modified it to only search for newlines
  (lisp
   (let ((part #\Newline)
	 (replacement "\\
"))
     (with-output-to-string (out)
       (loop
	 for old-pos = 0 then (+ pos 1)
	 for pos = (position part string
			     :start old-pos
			     :test #'char=)
	 do (write-string string out
			  :start old-pos
			  :end (or pos (cl:length string)))
	 when pos do (write-string replacement out)
	   while pos)))))

(defmacro codestring (&body body)
  `(comment (format nil "\"~a\""
                     (replace-newline-with-backslash-newline
                      (with-output-to-string (*standard-output*)
                        (simple-print (progn ,@body)))))
            :prefix ""))

(defun symbol-append (&rest symbols)
  "Generate a symbol by combining the names of a number of symbols."
  (lisp
   (intern (apply #'concatenate 'string
		  (mapcar #'symbol-name symbols)))))

(defun extract-parameter-names-from-lambda-list (args)
  "Find the names of all parameters in a DEFMACRO-sytle (i.e. nested) lambda list."
  (lisp
   (let* ((special 0)
	  (plain (loop
		   for arg in args
		   for i from 1
		   until (member arg lambda-list-keywords)
		   if (listp arg) append (extract-parameter-names-from-lambda-list arg)
		     else collect arg
		   finally (setf special i))))
     (append plain
	     (loop for arg in (common-lisp:subseq args special)
		   if (listp arg) collect (first arg)
		     else if (not (member arg lambda-list-keywords)) collect arg)))))

(defun get-declaration-name (item)
  (let ((id (cl:if
	     (let ((symbol (first (last (butlast item)))))
	       (cl:and (symbolp symbol)
		       (equal (symbol-name symbol) "=")))
	     (first (last item 3))
	     (first (last item)))))
    (cl:if (cl:and (listp id)
		   (let ((first (first id)))
		      (cl:or (eql first 'aref)
			  (eql first 'array)
			  (eql first 'fpointer)
			  (eql first 'funcall))))
	   (first (last (flatten (second id))))
	   (first (flatten id)))))

;;; still useful
(defmacro use-variables (&rest variables)
  `(progn
     ,@(loop for i in variables collect
	 `(defparameter ,i ',i))
     (values)))

(defmacro use-functions (&rest functions)
  `(progn
     ,@(loop for i in functions collect
	 `(defmacro ,i (&rest body) `(funcall ,',i ,@body)))))


