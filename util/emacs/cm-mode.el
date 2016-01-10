(defvar cm-mode-kwlist nil)
(defvar cm-mode-kwexp nil)

;; Loading of indent symbols inspired by Pascal Bourguignon
;;     http://lists.gnu.org/archive/html/help-gnu-emacs/2008-08/msg00050.html
;; Keyword handling inspired by
;;     http://www.emacswiki.org/emacs/AddKeywords
;;     http://www.gnu.org/software/emacs/manual/html_node/elisp/Customizing-Keywords.html
;; Mode layout by Chris Wellons
;;     http://nullprogram.com/blog/2013/02/06

(defun read-expressions ()
  (while (ignore-errors
	   (let ((exp (read (current-buffer))))
	     (if (eq exp :keywords)
		 (setq cm-mode-kwlist (append cm-mode-kwlist (read (current-buffer))))
	       (when (and (listp exp)
			  (symbolp (car exp))
			  (numberp (cadr exp))
			  (= (length exp) 2))
		 (put (car exp) 'lisp-indent-function (cadr exp))))
	     t))))

(defun load-indent-kw-file-if-exists (filename)
  (if (file-exists-p filename)
      (progn
	(message "cm-mode: reading indent file %s." filename)
	(with-temp-buffer
	  (insert-file-literally filename)
	  (read-expressions)))
    (message "cm-mode: indent file %s not found." filename)))

;;;###autoload
(define-minor-mode cm-mode
  "C-Mera minor mode that provides somd indentation and keyword support."
  :lighter " c-mera"
  (load-indent-kw-file-if-exists "~/.emacs.d/cm.indent")
  (load-indent-kw-file-if-exists "cm.indent")
  (load-indent-kw-file-if-exists "cgen.indent") ; backwards compatibility
  (when cm-mode-kwlist
    (let ((tail (apply #'concat (mapcar #'(lambda (s) (concat "\\|" (symbol-name s))) (cdr cm-mode-kwlist)))))
      (setq cm-mode-kwexp (concat "\\<\\(" (symbol-name (car cm-mode-kwlist)) tail "\\)\\>"))
      (font-lock-fontify-buffer)))
  (message "Loaded C-Mera minor mode."))
  
(provide 'cm-mode)

;;;###autoload
(add-hook 'cm-mode-hook
  (lambda ()
    (when cm-mode-kwexp
      (font-lock-add-keywords nil
	`((,cm-mode-kwexp . font-lock-keyword-face))))))
