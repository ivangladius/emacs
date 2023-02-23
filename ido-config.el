
(require 'ido)
(require 'ido-vertical-mode)
(require 'evil-config)


(define-key space-i-map (kbd "e") 'ido-find-file)

(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-show-count t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-only-match-face nil
                    :foreground "yellow")


(ido-mode 1)
(ido-vertical-mode 1)
