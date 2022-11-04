


(defun split-v-find-file ()
  (interactive)
  (split-window-right)
  (other-window 1)
  (ido-find-file))

(defun split-h-find-file ()
  (interactive)
  (split-window-below)
  (other-window 1)
  (ido-find-file))



