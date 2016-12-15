(in-package :cm-cuda)

;; Define a c-mera file reader with extra macro characters
(define-reader
  :file-reader   read-in-file
  :string-reader read-in-string
  :macro-character
  ((set-macro-character #\Space #'cm-c++::pre-process)
   (set-macro-character #\Tab #'cm-c++::pre-process)
   (set-macro-character #\Newline #'cm-c++::pre-process)
   (set-macro-character #\( #'cm-c++::pre-process-heads)
   (set-macro-character #\{ #'cm-c++::left-brace-reader)
   (set-macro-character #\} (get-macro-character #\) nil))
   (set-dispatch-macro-character #\# #\: #'cm-c++::sharp-colon-reader)))
    
;; Define a start-up function
(define-processor 
  :name cuda-processor
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
 :start-function cuda-processor 
 :in-package :cmu-cuda)

;;; Define a reader switch with c++ pre-processing
(define-switch
  :name switch-reader
  :macro-character
  ((set-macro-character #\Space #'cm-c++::pre-process)
   (set-macro-character #\Tab #'cm-c++::pre-process)
   (set-macro-character #\Newline #'cm-c++::pre-process)
   (set-macro-character #\( #'cm-c++::pre-process-heads)
   (set-macro-character #\{ #'cm-c++::left-brace-reader)
   (set-macro-character #\} #'cm-c++::right-brace-reader)
   (set-dispatch-macro-character #\# #\: #'cm-c++::sharp-colon-reader)))

(define-switches
  :cl-reader cl-reader
  :cm-reader cm-reader
  :macro-character
  ((set-macro-character #\Space #'cm-c++::pre-process)
   (set-macro-character #\Tab #'cm-c++::pre-process)
   (set-macro-character #\Newline #'cm-c++::pre-process)
   (set-macro-character #\( #'cm-c++::pre-process-heads)
   (set-macro-character #\{ #'cm-c++::left-brace-reader)
   (set-macro-character #\} #'cm-c++::right-brace-reader)
   (set-dispatch-macro-character #\# #\: #'cm-c++::sharp-colon-reader)))
