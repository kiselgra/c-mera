(in-package :cm-c++)

;; Define a c-mera file reader with extra macro characters
(define-reader
  :file-reader   read-in-file
  :string-reader read-in-string
  :macro-character
  ((set-macro-character #\Space #'pre-process)
   (set-macro-character #\Tab #'pre-process)
   (set-macro-character #\Newline #'pre-process)
   (set-macro-character #\( #'pre-process-heads)
   (set-macro-character #\{ #'left-brace-reader)
   (set-macro-character #\} (get-macro-character #\) nil))
   (set-dispatch-macro-character #\# #\: #'sharp-colon-reader)))
    
;; Define a start-up function
(define-processor 
  :name cxx-processor
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
 :start-function cxx-processor 
 :in-package :cmu-c++)

;;; Define a reader switch with c++ pre-processing
(define-switch
  :name switch-reader
  :macro-character
  ((set-macro-character #\Space #'pre-process)
   (set-macro-character #\Tab #'pre-process)
   (set-macro-character #\Newline #'pre-process)
   (set-macro-character #\( #'pre-process-heads)
   (set-macro-character #\{ #'left-brace-reader)
   (set-macro-character #\} (get-macro-character #\) nil))
   (set-dispatch-macro-character #\# #\: #'sharp-colon-reader)))

(define-switches
  :cl-reader cl-reader
  :cm-reader cm-reader
  :macro-character
  ((set-macro-character #\Space #'pre-process)
   (set-macro-character #\Tab #'pre-process)
   (set-macro-character #\Newline #'pre-process)
   (set-macro-character #\( #'pre-process-heads)
   (set-macro-character #\{ #'left-brace-reader)
   (set-macro-character #\} (get-macro-character #\) nil))
   (set-dispatch-macro-character #\# #\: #'sharp-colon-reader)))
