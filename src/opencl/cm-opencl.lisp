(in-package :cm-opencl)

;; Define a c-mera file reader with extra macro characters
(define-reader
  :file-reader   read-in-file
  :string-reader read-in-string
  :macro-character
  ((set-macro-character #\Space #'cm-c::pre-process)
   (set-macro-character #\Tab #'cm-c::pre-process)
   (set-macro-character #\Newline #'cm-c::pre-process)
   (set-macro-character #\( #'cm-c::pre-process-heads)))
    
;; Define a start-up function
(define-processor 
  :name c-processor
  :file-reader   read-in-file
  :string-reader read-in-string
  :extra-traverser
  (else-if-traverser
   if-blocker
   decl-blocker
   renamer))

 ;; Define a save function
(save-generator
 :name save 
 :start-function c-processor 
 :in-package :cmu-opencl)

;;; Define a reader switch with c++ pre-processing
(define-switch
  :name switch-reader
  :macro-character 
  ((set-macro-character #\Space #'cm-c::pre-process)
   (set-macro-character #\Tab #'cm-c::pre-process)
   (set-macro-character #\Newline #'cm-c::pre-process)
   (set-macro-character #\( #'cm-c::pre-process-heads)))
