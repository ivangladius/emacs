;; Set up package.el to work with MELPA

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; change mode-line color by evil state

;;(require 'evil-magit)

;; KEYMAPPING


;; LEADER KEYS PREFIX

(with-eval-after-load 'magit
  (define-key magit-status-mode-map "SPC" nil))

(evil-set-leader 'normal (kbd "SPC"))

(define-prefix-command 'space-map)
(define-key evil-normal-state-map (kbd "<SPC>") space-map)


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

;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
;; FILES PREFIX
(define-prefix-command 'space-i-map)
(define-key space-map (kbd "i") space-i-map)

;; FILES BINDING
(define-key space-i-map (kbd "e") 'ido-find-file)
(define-key space-i-map (kbd "r") 'ranger)
(define-key space-i-map (kbd "d") 'dired-jump)
(define-key space-i-map (kbd "f") 'dired)

(define-key space-i-map (kbd "4") 'dired)



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

;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

;; COMMANDS PREFIX
(define-prefix-command 'space-l-map)
(define-key space-map (kbd "l") space-c-map)
;; COMMANDS LAUNCH

(define-key space-l-map (kbd "e") 'eshell)
(define-key space-l-map (kbd "e") 'vterm)
(define-key space-l-map (kbd "e") 'magit)
(define-key space-l-map (kbd "e") 'eshell)






;; MISC BINDINGS

(define-key evil-normal-state-map (kbd ",") 'ace-window)


;; $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
