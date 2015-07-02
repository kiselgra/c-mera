(provide 'c-mera-lisp-indent-hack)
(message "Loading C-Mera Lisp indent hack, inspired by Pascal J. Bourguignon's code, see http://lists.gnu.org/archive/html/help-gnu-emacs/2008-08/msg00050.html")

(defun read-expressions ()
  (while
      (ignore-errors
	(let ((exp (read (current-buffer))))
	  (message "--> reading %s." exp)
	  (when (and (listp exp)
		     (symbolp (car exp))
		     (numberp (cadr exp))
		     (= (length exp) 2))
	    (message "(put %s 'lisp-indent-function %s)" (car exp) (cadr exp))
	    (put (car exp) 'lisp-indent-function (cadr exp)))
	  t))))

(if (file-exists-p "cgen.indent")
    (progn
      (message "indent file found.")
      (with-temp-buffer
	(insert-file-literally "cgen.indent")
	(read-expressions)))
  (message "no indent file"))


