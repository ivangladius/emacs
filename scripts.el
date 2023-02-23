

(defun load-init ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))


(defun visit-file-at-point ()
  "Visit file at point if it exists."
  (interactive)
  (let ((file (ffap-guess-file-name-at-point)))
    (when file
      (find-file file))))

(defun run-single-java-file ()
  (interactive)
  (let*
	  ((bname (buffer-file-name (current-buffer)))
	   (bname-no-ex (file-name-sans-extension bname)))
	(let
		((c1 (concat "javac " bname))
		 (c2 (concat "java " bname-no-ex))
		 (del-class (concat "rm " (concat bname-no-ex ".class"))))
	  ;; (message bname)
	  ;; (message bname-no-ex)
	  ;; (message del-class)
	  (shell-command c1)
	  (shell-command c2)
	  (shell-command del-class)
	  )))




(defun latex-to-pdf-fast()
  (interactive)
  (buffer-file-name (current-buffer)))

;;(latex-to-pdf-fast)





(defun delete-function-at-point ()
  "google marked word in brave browser"
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))))


(defun funfun(start end)
  (interactive "r")
  (start-process "emacs-brave"
		 nil
		 "https://www.google.com/search?q=lolxd"
		 (concat (concat "\"" (buffer-substring-no-properties start end))
			 "\"")))



(defun region-with-browser (start end)
  "Search for marked word with chromium."
  (interactive "r")
  (start-process
   "emacs-google"
   nil
   "chromium"
   "--new-window"
   (concat "https://www.google.com/search?q="
	   (buffer-substring-no-properties start end))))



