(in-package :cm-c++)

(defun dissect (item &key (quoty nil))
  "extended c pre processor"
  (cond
    ((symbolp item)
     (if (and (> (length (symbol-name item)) 1)
	      (not (eql (first (coerce (symbol-name item) 'list)) #\&))
	      (eql (first (reverse (coerce (symbol-name item) 'list))) #\&))
	 (split-reference item)
	 (cm-c::dissect item :quoty quoty)))
    (t (cm-c::dissect item :quoty quoty))))

(defun split-reference (item)
  (let* ((name (symbol-name item))
	 (len (length name)))
    `(cmu-c++::reference-type ,(dissect (intern (subseq name 0 (- len 1))) :quoty t))))
			 
;; copy of c reader
(defun pre-process (stream char)
  "Pre process symbols in stream and prepare actual node"
  (declare (ignore char))
  (let ((peek (peek-char nil stream nil nil nil)))
    ;; skip multiple whitespace and comments
    (if (not (or (eql peek #\))
		 (eql peek #\;)
		 (eql peek #\#)
		 (eql peek #\})
		 (eql peek #\{)
		 (eql peek #\Space)
		 (eql peek #\Newline)
		 (eql peek #\Tab)))
	(dissect (read stream nil nil nil))
	(values))))

;; copy of c reader
(defun pre-process-heads (stream char)
  "Pre process list heads and prepare nodes"
  (declare (ignore char))
  (let ((peek (peek-char nil stream nil nil nil))
	(list (read-delimited-list #\) stream t)))
    (let ((first (first list)))
      ;; stop at whitespace and comments
      (if (not (or (eql peek #\()
		   (eql peek #\))
		   (eql peek #\})
		   (eql peek #\{)
		   (eql peek #\;)
		   (eql peek #\#)
		   (eql peek #\Space)
		   (eql peek #\Newline)
		   (eql peek #\Tab)
		   (and (symbolp first)
			(fboundp! first))))
	  (append (list (dissect first)) (rest list))
	  list))))


(defun sharp-colon-reader (stream c1 c2)
  (declare (ignore c1 c2))
  (flet ((valid-id-char (c)
	   (not (or (char= #\( c)
		    (char= #\) c)
		    (char= #\} c)
		    (char= #\{ c)
		    (char= #\; c)
		    (char= #\Space c)
		    (char= #\Newline c)
		    (char= #\Tab c)))))
    ;; accumulation target
    (let ((str (make-array 0 :element-type 'character
			   :fill-pointer 0
			   :adjustable t)))
      ;; read char-by-char, unread terminating char
      (loop for c = (read-char-no-hang stream)
	then    (read-char-no-hang stream)
	while   (valid-id-char c)
	do      (vector-push-extend c str)
	finally (unread-char c stream))
      ;; build fn-form by parsing the read string
      (let ((x `(cmu-c++::from-namespace
		 ,@(loop for s in (loop for i = 0 then (1+ j)
				     as j = (position #\: str :start i)
				     collect (subseq str i j)
				     while j)
		      if (string/= s "")
		      collect (dissect (cintern s) :quoty t)))))
	x))))

(defun left-brace-reader (stream char)
  "Read cxx initializer list '{...}' and emit double list '((...))'"
  (declare (ignore char))
  (let ((init-list (read-delimited-list #\} stream t)))
    (let ((first (car init-list))
	  (rest  (rest init-list)))
      (list (list (append (list (dissect first)) rest))))))
