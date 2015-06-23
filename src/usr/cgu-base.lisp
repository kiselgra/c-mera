(in-package :cg-user)

(use-variables true false null)
(use-functions printf fprintf)
(use-functions min max sin cos tan fabs)

;;standard functions/macrosq
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
