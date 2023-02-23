;; Set up package.el to work with MELPA

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)


(load "~/.emacs.d/evil/file-functions")
(load "~/.emacs.d/evil/evil-magit/evil-magit.el")


(global-set-key (kbd "C-u") nil)

(evil-global-set-key 'normal (kbd "C-u")
					 '(lambda ()
						(interactive)
						(evil-scroll-page-up 1)
						(recenter)))

(evil-global-set-key 'normal (kbd "C-d")
					 '(lambda ()
						(interactive)
						(evil-scroll-page-down 1)
						(recenter)))

;;(evil-define-key 'normal (kbd "C-u") 'evil-scroll-down)


;;(require 'evil-magit)

;; change mode-line color by evil state


;; KEYMAPPING


;; LEADER KEYS PREFIX

;;(with-eval-after-load 'magit
;;  (define-key magit-diff-mode-map (kbd "SPC") nil))



(evil-set-leader 'normal (kbd "SPC"))

(define-prefix-command 'space-map)
(define-key evil-normal-state-map (kbd "<SPC>") space-map)

(evil-global-set-key 'normal (kbd "SPC") space-map)


;; DIRED
(add-hook 'dired-mode-hook
		  (lambda ()
			(define-key evil-normal-state-local-map (kbd "<SPC>") space-map)
			(define-key evil-motion-state-local-map (kbd "<SPC>") space-map)))

;; MAGIT
(add-hook 'magit-status-mode-hook
		  (lambda ()
			(define-key evil-normal-state-local-map (kbd "<SPC>") space-map)
			(define-key evil-motion-state-local-map (kbd "<SPC>") space-map)))


(define-prefix-command 'tags-prog-map)
(define-key space-map (kbd "g") tags-prog-map)

;;(add-hook 'c-mode-hook
	;;  (lambda ()
	    (define-key tags-prog-map (kbd ".") 'helm-gtags-dwim)
	    (define-key tags-prog-map (kbd "s") 'helm-gtags-find-symbol)
	    (define-key tags-prog-map (kbd "r") 'helm-gtags-find-rtag)
	 ;;   ))



	   


(evil-define-key 'normal 'org-mode-map (kbd "R") #'org-latex-preview)
;; ORG MODE
(global-set-key (kbd "C-c o") (lambda ()
				(interactive)
				(save-buffer)
				(org-latex-export-to-pdf)))



;; PROJECTILE

(define-prefix-command 'space-p-map)
(define-key space-map (kbd "p") 'projectile-command-map)

(define-key 'projectile-command-map (kbd "p") 'projectile-find-file)


;; TREEMACS 
(define-prefix-command 'treemacs-map)
(define-key space-map (kbd "<SPC>") treemacs-map)




;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;; FILES PREFIX
(define-prefix-command 'space-i-map)
(define-key space-map (kbd "i") space-i-map)

;; FILES BINDING
(define-key space-i-map (kbd "r") 'ranger)
(define-key space-i-map (kbd "d") 'dired-jump)
(define-key space-i-map (kbd "f") 'dired)

(define-key space-i-map (kbd "4") 'split-v-find-file)
(define-key space-i-map (kbd "3") 'split-h-find-file)


;; GTAGS PREFIX




;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

;; BUFFER PREFIX
(define-prefix-command 'space-f-map)
(define-key space-map (kbd "f") space-f-map)

;; BUFFER BINDINGS
(define-key space-f-map (kbd "e") 'ido-switch-buffer)
(define-key space-f-map (kbd "d") '(lambda ()
				     (interactive) (switch-to-buffer (other-buffer))))
(define-key space-f-map (kbd "k") '(lambda ()
				     (interactive) (kill-buffer (current-buffer))))



;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

 ;; COMMANDS PREFIX
(define-prefix-command 'space-c-map)
(define-key space-map (kbd "c") space-c-map)
;; COMMANDS BINDINGS

(define-key space-c-map (kbd "i") 'smex)
(define-key space-c-map (kbd "l") 'load-init)

;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

;; LAUNCH PREFIX
(define-prefix-command 'space-l-map)
(define-key space-map (kbd "l") space-l-map)
;; LAUNCH BINDINGS

(define-key space-l-map (kbd "e") 'eshell)
(define-key space-l-map (kbd "a") 'ansi-term)
(define-key space-l-map (kbd "s") 'magit)
;;(define-key space-l-map (kbd "m") ')

;; WORKSPACE PREFIX
(define-prefix-command 'space-w-map)
(define-key space-map (kbd "w") space-w-map)
;; WORKSPACE COMMANDS

(define-key space-w-map (kbd "c") 'wg-create-workgroup)
(define-key space-w-map (kbd "p") 'wg-switch-left)
(define-key space-w-map (kbd "n") 'wg-switch-right)
(define-key space-w-map (kbd "u") 'wg-update-workgroup)
(define-key space-w-map (kbd "r") 'wg-revert-workgroup)
(define-key space-w-map (kbd "k") 'wg-kill-workgroup)
(define-key space-w-map (kbd "i") 'wg-switch-to-workgroup)
(define-key space-w-map (kbd "l") 'wg-load)
(define-key space-w-map (kbd "s") 'wg-save)

;; TAGS PREFIX
(define-prefix-command 'space-d-map)
(define-key space-map (kbd "d") space-d-map)
;; TAGS BINDINGS
(define-key space-d-map (kbd "i") 'idomenu)











;; MISC BINDINGS

(define-key space-map (kbd ",") 'ace-window)
(define-key evil-normal-state-map (kbd "U") 'undo-redo)

(define-key space-map (kbd "4") '(lambda ()
				   (interactive) (split-window-right) (other-window 1)))

(define-key space-map (kbd "3") '(lambda ()
				   (interactive) (split-window-below) (other window 1)))



(define-key space-map (kbd "2") 'delete-window)
(define-key space-map (kbd "1") 'delete-other-windows)


;; MOTION BINDINGS

(define-key evil-motion-state-map (kbd ",") 'ace-window)


(evil-mode 1)


;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$




;; MINOR MODES

;; ORG MODE
