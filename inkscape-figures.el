
(defun inkscape-figures/create ()
  (interactive)
  (let ((command (concat
						  "inkscape-figures create figures/"
						  (read-from-minibuffer "file name: "))))

	(shell-command command 1)))


(defun inkscape-figures/edit ()
  (interactive)
  (shell-command "inkscape-figures edit figures"))


(global-set-key (kbd "C-c C-9") 'inkscape-figures/create)
(global-set-key (kbd "C-c C-0") 'inkscape-figures/edit)

