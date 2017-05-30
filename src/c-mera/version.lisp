(in-package :c-mera)

(defparameter *version*
  (or
   (ignore-errors
     (funcall (read-from-string "asdf:load-system") :cl-ppcre)
     (let* ((path (merge-pathnames
                   "configure.ac"
                   (funcall (read-from-string"asdf:system-source-directory") :c-mera)))
            (string
             (with-open-file (in path)
               (loop for line = (read-line in nil nil)
                  while line
                  for match = (nth-value 1 (funcall
                                            (read-from-string "cl-ppcre:scan-to-strings")
                                            "^AC_INIT\\([^,]*[, ]*\\[([^,]*)\\]" line))
                  when match
                  do (return-from nil (aref match 0))))))
       (and string
            (mapcar #'parse-integer (funcall (read-from-string "cl-ppcre:split")
                                             "\\." string)))))
   '(0 0 0)))

(defparameter *generator* :undefined)

(defun print-version ()
  (format t "~a.~a.~a~%" (first *version*) (second *version*) (third *version*)))
