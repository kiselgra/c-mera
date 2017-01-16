(in-package :cm-c++)

;;; Add clean lists to decl-blocker stacks
;;; avoid extra braces in class defintion
(decl-blocker-extra-nodes constructor)


;;; Check if identifier is of type "operatorXX"
;;; and prevent renaming of cxx operator definition
(defmethod check-and-get-name :before ((item renamer) check-name)
  (with-slots (name-map) item
    (let ((operatorXX (symbol-name check-name)))
      (when (and (>= (length operatorXX) 8)
	     (string-equal "operator" operatorXX :start2 0 :end2 8))
	(when   (not (gethash operatorXX name-map)))
	;; put unmodified operator into name-map
	;; -> this will be used later directly without check
	(setf (gethash operatorXX name-map) check-name)))))
	
