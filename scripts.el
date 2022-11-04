

(defun load-init ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))


(defun visit-file-at-point ()
  "Visit file at point if it exists."
  (interactive)
  (let ((file (ffap-guess-file-name-at-point)))
    (when file
      (find-file file))))




(defun latex-to-pdf-fast()
  (interactive)
  (buffer-file-name (current-buffer)))

(latex-to-pdf-fast)
