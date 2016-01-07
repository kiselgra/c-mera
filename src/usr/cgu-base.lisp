(in-package :cg-user)

(use-variables true false null)
(use-functions printf fprintf)
(use-functions min max sin cos tan fabs)

;;standard functions/macros
(defmacro when (test &body forms)
  `(if ,test
       (progn
	 ,@forms)))

;; (defmacro cond (&rest clauses)
;;   (let ((head (first clauses)))
;;     (lisp
;;      (when head
;;        `(if ,(first head)
;; 	    ,(cons 'progn (cdr head))
;; 	    (cond ,@(cdr clauses)))))))

;;; new cons with (t ...) without "else...."
(defmacro cond (&rest clauses)
  (let ((head (first clauses)))
    (lisp
      (when head
	(if (eql (first head) t)
	    (cons 'progn (cdr head))
	    `(if ,(first head)
		 ,(cons 'progn (cdr head))
		 (cond ,@(cdr clauses))))))))

(defmacro 1+ (number)
  `(+ ,number 1))

(defmacro 1- (number)
  `(- ,number 1))

(defmacro pre-inc (arg) `(prefix ,arg '++))
(defmacro pre-dec (arg) `(prefix ,arg '--))
(defmacro post-inc (arg) `(postfix ,arg '++))
(defmacro post-dec (arg) `(postfix ,arg '--))


(lisp
  ;; Code proposed by plops on issue #17
  ;; https://github.com/kiselgra/c-mera/issues/17
  
  (defun replace-newline-with-backslash-newline (string)
    ;; this is from common lisp cookbook i got it from here:
    ;; http://stackoverflow.com/questions/4366668/str-replace-in-lisp
    ;; i modified it to only search for newlines
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

(defmacro add-qualifier (&rest qualifiers)
  `(cgen::add-qualifier ,@(loop for i in qualifiers collect `,i)))

(lisp
 (defun symbol-append (&rest symbols)
   "Generate a symbol by combining the names of a number of symbols."
   (intern (apply #'concatenate 'string
		  (mapcar #'symbol-name symbols)))))

(lisp
 (defun extract-parameter-names-from-lambda-list (args)
   "Find the names of all parameters in a DEFMACRO-sytle (i.e. nested) lambda list."
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
