;;;;Handles preprocessing of code in c-style.
;;;;Contains reader macros for pre-processing and line-numbering.


(in-package :cgen)

;;;Used as a global pre-processor for all symbols in cgen-code
(defun pre-parse (item &optional &key quote-it)
  "starts the appropriate preprocessing for the item"
  (cond
    ((symbolp item)
     (cond
       ((and (eql (first (coerce (symbol-name item) 'list)) #\")
	     (eql (first (reverse (coerce (symbol-name item) 'list))) #\"))
	item)
       ((and (eql (first (coerce (symbol-name item) 'list)) #\<)
	     (eql (first (reverse (coerce (symbol-name item) 'list))) #\>))
	item)
       ((or (eql item 'cg-user::&optional)
	    (eql item 'cg-user::&key)
		(eql item 'cg-user::&environment)
	    (eql item 'cg-user::&body)
	    (eql item 'cg-user::&rest))
	item)
       ((and (> (length (symbol-name item)) 1)
	     (eql (first (coerce (symbol-name item) 'list)) #\&))
	(split-addrof item))
       ((and (> (length (symbol-name item)) 1)
	     (eql (first (coerce (symbol-name item) 'list)) #\*)
	     (not (eql (first (reverse (coerce (symbol-name item) 'list))) #\*)))
	(split-targof item))
       (t 
	(let* ((name-string (symbol-name item))
		   (num-pos (position-if #'numberp (mapcar #'digit-char-p (coerce name-string 'list))))
		   (f-pos (search "F" name-string :from-end t))
		   (-pos  (search "-" name-string))
	       (dot-pos2 (search "." name-string)) ;hack
	       (dot-pos (search "." name-string :from-end t))
	       (arrow-pos (search "->" name-string :from-end t))
	       (bracket-pos (search "]" name-string :from-end t)))
	  (labels ((pos-cond (a b c) (if a (and (if b (> a b) t) (if c (> a c) t)) nil)))
	    (cond
		  ((and (eql f-pos (- (length name-string) 1)) (or (eql num-pos 0)
														   (eql -pos 0)
														   (eql dot-pos2 0)))
		   (read-float item quote-it))
	      ((pos-cond dot-pos arrow-pos bracket-pos) (split-oref item quote-it))
	      ((pos-cond arrow-pos dot-pos bracket-pos) (split-pref item quote-it))
	      ((pos-cond bracket-pos arrow-pos dot-pos) (split-aref item quote-it))
	      ((or (search "+" name-string) (search "-" name-string) (search "!" name-string)) (split-unary item quote-it))
	      (t (if (parse-integer (format nil "~a" item) :junk-allowed t)
		     (parse-integer (format nil "~a" item) :junk-allowed t)
		     (if quote-it
			 `',item
			 item)))))))))
    (t item)))

(defun read-float (item quote-it)
  "perace correct float print"
  (let* ((name (symbol-name item))
		 (len (length name)))
	;; Thanks to:  Bozhidar Batsov, batsov.com/articles/2011/04/30/parsing-numbers-from-string-in-lisp
	(with-input-from-string (in (subseq name 0 (- len 1)))
	  `(cg-user::float-type ,(read in)))))

(defun split-unary (item quote-it)
  "prepare ++i or the like to unary node cration: ++i => (prefix i ++)"
  (let* ((name (symbol-name item))
	 (len (length name))
	 (>2 (> len 2))
	 (>1 (> len 1)))
    (if (not >1)
	item
	(let ((pos-inc (if (equalp (subseq name (- len 2) len) "++") t nil))
	      (pos-dec (if (equalp (subseq name (- len 2) len) "--") t nil))
	      (pre-inc (if (equalp (subseq name 0 2) "++") t nil))
	      (pre-dec (if (equalp (subseq name 0 2) "--") t nil))
	      (minus (if (equalp (subseq name 0 1) "-") t nil))
	      (plus (if (equalp (subseq name 0 1) "+") t nil))
	      (not (if (equalp (subseq name 0 1) "!") t nil)))
	  (cond
	    ((and pos-inc >2) `(cg-user::postfix ,(pre-parse (intern (subseq name 0 (- len 2))) :quote-it quote-it) '++))
	    ((and pos-dec >2) `(cg-user::postfix ,(pre-parse (intern (subseq name 0 (- len 2))) :quote-it quote-it) '--))
	    ((and pre-inc >2) `(cg-user::prefix ,(pre-parse (intern (subseq name 2 len)) :quote-it quote-it) '++))
	    ((and pre-dec >2) `(cg-user::prefix ,(pre-parse (intern (subseq name 2 len)) :quote-it quote-it) '--))
	    ((and minus >1) `(cg-user::prefix ,(pre-parse (intern (subseq name 1 len)) :quote-it quote-it) '-))
	    ((and plus >1) `(cg-user::prefix ,(pre-parse (intern (subseq name 1 len)) :quote-it quote-it) '+))
	    ((and not >1) `(cg-user::prefix ,(pre-parse (intern (subseq name 1 len)) :quote-it quote-it) '!))
	    (t item))))))

(defun split-addrof (name)
  "prepare addr-of node: &foo => (addr-of foo)"
  (let ((name (symbol-name name)))
    `(cg-user::addr-of ,(pre-parse (intern (subseq name 1 (length name)))))))

(defun split-targof (name)
  "prepare targ-of node: *foo => (targ-of foo)"
  (let ((name (symbol-name name)))
    `(cg-user::targ-of ,(pre-parse (intern (subseq name 1 (length name)))))))

(defun split-oref (name quote-it)
  "prepare oref node: foo.baz => (oref foo baz)"
  (let* ((name-string (symbol-name name))
	 (pos (search "." name-string :from-end t))
	 (names (fix-case (subseq name-string 0 pos) (subseq name-string (+ 1 pos)))))
    `(cg-user::oref ,(pre-parse (first names) :quote-it quote-it)
    		    ,(pre-parse (second names) :quote-it t))))

(defun split-pref (name quote-it)
  "prepare pref node: a->b => (pref a b)"
  (let* ((name-string (symbol-name name))
	 (pos (search "->" name-string :from-end t))
	 (names (fix-case (subseq name-string 0 pos) (subseq name-string (+ 2 pos)))))
    (if (eql pos 0)
	name
	`(cg-user::pref ,(pre-parse (first names) :quote-it quote-it)
			,(pre-parse (second names) :quote-it t)))))

;;; TODO fix-case for list-style aref
(defun split-aref (name quote-it)
  "make aref node: a[b][c] => (aref a b c)"
  (let* ((name-string (symbol-name name))
	 (pos (search "[" name-string))
	 (array-name (pre-parse (intern (subseq name-string 0 pos))))
	 (index-list (coerce (subseq name-string pos (length name-string)) 'list))
	 (aref-list nil) (counter 0) (start-sub 0))
    (loop for i in index-list do
	 (progn
	   (cond ((eql i #\[) (incf counter)) ((eql i #\]) (decf counter)))
	   (cond ((and (eql i #\[) (eql counter 1)) (setf start-sub (+ 1 pos)))
		 ((and (eql counter 0) (> (- pos start-sub) 0))
		  (push (intern (subseq name-string start-sub pos)) aref-list)))
	   (incf pos)))
    (if quote-it
	`(cg-user::aref ',array-name .,(reverse (mapcar #'pre-parse aref-list)))
	`(cg-user::aref ,array-name .,(reverse (mapcar #'pre-parse aref-list))))))
	 
;;;"register" Pre-Processing
(defun pre-process (stream char)
  "pre-parse current symbol in stream and prepare actual nodes"
  (declare (ignore char))
  (let ((peek (peek-char nil stream nil nil nil)))
    ;;do not pre-process multiple whitespace or other special characters
    (if (not (or (eql peek #\))
		 (eql peek #\;)
		 (eql peek #\Space)
		 (eql peek #\Newline)
		 (eql peek #\Tab)))
	(pre-parse (read stream nil nil nil))
	(values))))

(defun pre-process2 (stream char)
  "pre-parse continued"
  (let ((peek (peek-char nil stream nil nil nil))
	(list (line-number-reader (stream char))))
    (if (not (or (eql peek #\()
		 (eql peek #\))
		 (eql peek #\Space)
		 (eql peek #\Newline)
		 (eql peek #\Tab)))
	(append (list (pre-parse (first list))) (rest list))
	list)))

;;;Line numbering for debug-mode
(defun line-number-reader (stream char)
  "stores the line and file information of the current list in global hashes"
  (let ((line (get-line stream))
	(list (sb-impl::read-list stream char))
	(file (first *current-file*)))
    (setf (gethash list *line-hash*) line)
    (setf (gethash list *file-hash*) file)
    list))
