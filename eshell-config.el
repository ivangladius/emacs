
(defun run-this-in-eshell (cmd)
  "Runs the command 'cmd' in eshell."
  (with-current-buffer "*eshell*"
    (end-of-buffer)
    (eshell-kill-input)
    (message (concat "Running in Eshell: " cmd))
    (insert cmd)
    (eshell-send-input)
    (end-of-buffer)
    (eshell-bol)
    (yank)))



(bind-keys*
    ("C-<backspace>" . (lambda () ; clear shell
                     (interactive)
                     (run-this-in-eshell "clear 1"))))




