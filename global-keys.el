



;;(use-package dired-x
;;  :ensure nil)


;; (global-set-key (kbd "M-l") 'key-map-launch)

;; (progn
;;   (define-prefix-command 'key-map-launch)

;;   (define-key 'key-map-launch (kbd "e") 'eshell)
;;   (define-key 'key-map-launch (kbd "s") 'magit)
;;   (define-key 'key-map-launch (kbd "d") 'dired-jump)
;;   (define-key 'key-map-launch (kbd "M-d") 'dired)
;;     )
  

(global-set-key (kbd "C-c o") (lambda () (interactive) (forward-line 45)))
(global-set-key (kbd "C-c u") (lambda () (interactive) (forward-line -45)))

;;(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "M-i") 'helm-swoop)


(global-set-key (kbd "C-c l") 'quickrun)
(global-set-key (kbd "C-c C-j") 'visit-file-at-point)
(global-set-key (kbd "C-c j") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)


;;(global-set-key (kbd "M-a") 'helm-find-files)
;;(global-set-key (kbd "M-q") 'isearch-forward)

;;(global-unset-key (kbd "M-s"))
;;(global-set-key (kbd "M-s") 'helm-mini)

;;(global-set-key (kbd "M-e") 'wg-switch-left)

;; (global-set-key (kbd "M-p") 'split-window-right)
;; (global-set-key (kbd "M-u") 'split-window-below)
;; (global-set-key (kbd "M-h") 'my-delete-other-window)

;;(global-set-key (kbd "M-g i") 'ace-window)

;;(global-set-key (kbd "M-n") 'kill-this-buffer)

;;(global-set-key (kbd "M-") 'kill-this-buffer)









(global-set-key (kbd "C-z") 'yank)



(defun my-delete-other-window ()
  (interactive)
  (delete-other-windows (get-buffer-window()) nil))






