
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs))

;;(setq tramp-default-method "ssh")

(require 'tramp)
(defun sudired ()
  (interactive)
  (dired "/sudo::/"))

(require 'auto-sudoedit)
(auto-sudoedit-mode 1)
