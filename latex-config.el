

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq TeX-PDF-mode t)
(setq TeX-command-force "LaTeX")


(defun open-current-file-with-evince ()
  (interactive)
  (start-process "evince-in-emacs" nil
				  "evince" 
				  (concat (file-name-sans-extension
						   (buffer-name (current-buffer))) ".pdf")))






(global-set-key (kbd "C-c C-8") 'open-current-file-with-evince)
