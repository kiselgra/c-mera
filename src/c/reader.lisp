(in-package :cm-c)

;;; Used as a global pre-processor for all symbols in c-mera nodes
(defun dissect (item &key (quoty nil))
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
       ((and (eql (first (coerce (symbol-name item) 'list)) #\*)
	     (eql (first (reverse (coerce (symbol-name item) 'list))) #\*))
	item)
       ;; check/(fix package 
       ((or (eql item 'cmu-c::&optional)
	    (eql item 'cmu-c::&key)
	    (eql item 'cmu-c::&environment)
	    (eql item 'cmu-c::&body)
	    (eql item 'cmu-c::&rest))
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
	       (read-float item))
	      ((pos-cond dot-pos arrow-pos bracket-pos) (split-oref item))
	      ((pos-cond arrow-pos dot-pos bracket-pos) (split-pref item))
	      ((pos-cond bracket-pos arrow-pos dot-pos) (split-aref item))
	      ((or (search "+" name-string)
		   (search "-" name-string)
		   (search "!" name-string)
		   (search "*" name-string)
		   ;(search "&" name-string) ;; move to cpp reader
		   (search "~" name-string))
	      
	       (split-unary item))
	      (t (if (parse-integer (format nil "~a" item) :junk-allowed t)
		     (parse-integer (format nil "~a" item) :junk-allowed t)
		     (if quoty
			 `(quoty ,item)
			 item)))))))))
    (t item)))

(defun read-float (item)
  "perace correct float print"
  (let* ((name (symbol-name item))
	 (len (length name)))
    ;; Inspired by:  Bozhidar Batsov, batsov.com/articles/2011/04/30/parsing-numbers-from-string-in-lisp
    (with-input-from-string (in (subseq name 0 (- len 1)))
      `(cmu-c::float-type ,(read in)))))

(defun split-unary (item)
  "prepare ++i or the like to unary node cration: ++i => (prefix i ++)"
  (let* ((name (symbol-name item))
	 (len (length name))
	 (>2 (> len 2))
	 (>1 (> len 1)))
    (if (not >1)
	item
	(let ((pos-inc (equalp (subseq name (- len 2) len) "++"))
	      (pos-dec (equalp (subseq name (- len 2) len) "--"))
	      (pre-inc (equalp (subseq name 0 2) "++"))
	      (pre-dec (equalp (subseq name 0 2) "--"))
	      (minus   (equalp (subseq name 0 1) "-"))
	      (plus    (equalp (subseq name 0 1) "+"))
	      (not     (equalp (subseq name 0 1) "!"))
	      (not2    (equalp (subseq name 0 1) "~"))
	      (ast     (equalp (subseq name (- len 1) len) "*")))
		       
	  (cond
	    ((and pos-inc >2) `(cmu-c::postfix++ ,(dissect (intern (subseq name 0 (- len 2))) :quoty t)))
	    ((and pos-dec >2) `(cmu-c::postfix-- ,(dissect (intern (subseq name 0 (- len 2))) :quoty t)))
	    ((and ast >1)     `(cmu-c::postfix*  ,(dissect (intern (subseq name 0 (- len 1))) :quoty t)))
	    ((and pre-inc >2) `(cmu-c::prefix++  ,(dissect (intern (subseq name 2 len)) :quoty t)))
	    ((and pre-dec >2) `(cmu-c::prefix--  ,(dissect (intern (subseq name 2 len)) :quoty t)))
	    ((and minus >1)   `(cmu-c::-  ,(dissect (intern (subseq name 1 len)) :quoty t)))
	    ((and plus >1)    `(cmu-c::+  ,(dissect (intern (subseq name 1 len)) :quoty t)))
	    ((and not >1)     `(cmu-c::!  ,(dissect (intern (subseq name 1 len)) :quoty t)))
	    ((and not2 >1)    `(cmu-c::~  ,(dissect (intern (subseq name 1 len)) :quoty t)))
	    (t item))))))

(defun split-addrof (name)
  "prepare addr-of node: &foo => (addr-of foo)"
  (let ((name (symbol-name name)))
    `(cmu-c::addr-of ,(dissect (intern (subseq name 1 (length name))) :quoty t))))

(defun split-targof (name)
  "prepare targ-of node: *foo => (targ-of foo)"
  (let ((name (symbol-name name)))
    `(cmu-c::targ-of ,(dissect (intern (subseq name 1 (length name))) :quoty t))))

(defun split-oref (name)
  "prepare oref node: foo.baz => (oref foo baz)"
  (let* ((name-string (symbol-name name))
	 (pos (search "." name-string :from-end t))
	 (names (fix-case (subseq name-string 0 pos) (subseq name-string (+ 1 pos)))))
    `(cmu-c::oref ,(dissect (first names) :quoty t)
		  ,(dissect (second names) :quoty t))))

(defun split-pref (name)
  "prepare pref node: a->b => (pref a b)"
  (let* ((name-string (symbol-name name))
	 (pos (search "->" name-string :from-end t))
	 (names (fix-case (subseq name-string 0 pos) (subseq name-string (+ 2 pos)))))
    (if (eql pos 0)
	name ;; function definition arrow, dont touch
	`(cmu-c::pref ,(dissect (first names) :quoty t)
		      ,(dissect (second names) :quoty t)))))

(defun split-aref (name)
  "make aref node: a[b][c] => (aref (aref a b) c)"
  (let* ((name-string (symbol-name name))
	 (name-list (reverse (coerce name-string 'list))))
    (let ((pos 0)
	  (counter 0)
	  (names nil))
      
      ;; get position of matching '[ for last ']
      (loop for i in name-list do
	(progn
	  (cond 
	    ((eql i #\]) (incf counter))
	    ((eql i #\[) (decf counter)))
	  (incf pos)
	  (when (eql  counter 0)
	    (return))))
      (setf pos (- (length name-string) pos))
      (setf names (fix-case (subseq name-string 0 pos)
			    (subseq name-string (1+ pos) (1- (length name-string)))))
      (if (not (equal "" (symbol-name (second names))))
	  ;; index not empty
	  `(cmu-c::aref ,(dissect (first names) :quoty t)
			,(dissect (second names) :quoty t))
	  ;; index empty
	  `(cmu-c::aref ,(dissect (first names) :quoty t))))))
      
(defun pre-process (stream char)
  "Pre process symbols in stream an prepare actual node"
  (declare (ignore char))
  (let ((peek (peek-char nil stream nil nil nil)))
    ;; stop at whitespace and comments
    (if (not (or (eql peek #\))
		 (eql peek #\;)
		 (eql peek #\Space)
		 (eql peek #\Newline)
		 (eql peek #\Tab)))
	(dissect (read stream nil nil nil))
	(values))))

(defun pre-process-heads (stream char)
  "Pre process list heads and prepare nodes"
  (declare (ignore char))
  (let ((peek (peek-char nil stream nil nil nil))
	(list
	  #+sbcl (sb-impl::read-list stream char)
	  #+clozure (ccl::read-list stream char)
	  #-(or sbcl clozure)
	  (error "Missing implementation of pre-process-heads for your lisp implementation")))
    (let ((first (first list)))
      ;; stop at whitespace and comments
      (if (not (or (eql peek #\()
		   (eql peek #\))
		   (eql peek #\;)
		   (eql peek #\Space)
		   (eql peek #\Newline)
		   (eql peek #\Tab)
		   (and (symbolp first)
			(fboundp! first))))
	  (append (list (dissect first)) (rest list))
	  list))))
