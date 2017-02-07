(in-package :cm-c)

 ;; Define a c-mera file reader with extra macro characters
(define-reader
  :file-reader   read-in-file
  :string-reader read-in-string
  :macro-character
  ((set-macro-character #\Space #'pre-process)
   (set-macro-character #\Tab #'pre-process)
   (set-macro-character #\Newline #'pre-process)
   (set-macro-character #\( #'pre-process-heads)))

;; Define a start-up function
(define-processor 
  :name c-processor
  :file-reader   read-in-file
  :string-reader read-in-string
  :extra-traverser
  (nested-nodelist-remover
   else-if-traverser
   if-blocker
   decl-blocker
   renamer))

 ;; Define a save function
(save-generator
 :name save 
 :start-function c-processor 
 :in-package :cmu-c)

;;; Simply prints the ast, useful in REPL.
(defun simple-print (tree)
  "Pretty prints c-mera ast"
  (let (
	;(nc (make-instance 'nodelist-traverser))
	(ei (make-instance 'else-if-traverser))
	(ib (make-instance 'if-blocker))
	(db (make-instance 'decl-blocker))
	(rn (make-instance 'renamer))
	(pp (make-instance 'pretty-printer)))
    (progn
      ;(traverser nc tree 0)
      (traverser ei tree 0)
      (traverser ib tree 0)
      (traverser db tree 0)
      (traverser rn tree 0)
      (traverser pp tree 0))))	

;;; Define a reader switch with c pre-processing
(define-switch
  :name switch-reader
  :macro-character
  ((set-macro-character #\Space #'pre-process)
   (set-macro-character #\Tab #'pre-process)
   (set-macro-character #\Newline #'pre-process)
   (set-macro-character #\( #'pre-process-heads)))

(define-switches
  :cl-reader cl-reader
  :cm-reader cm-reader
  :macro-character
  ((set-macro-character #\Space #'pre-process)
   (set-macro-character #\Tab #'pre-process)
   (set-macro-character #\Newline #'pre-process)
   (set-macro-character #\( #'pre-process-heads)))
  
