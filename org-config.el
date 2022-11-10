(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(use-package evil-org
  :ensure t
  :after org
  :hook (org-mode . (lambda () evil-org-mode))
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(add-hook 'org-mode-hook 'evil-org-mode)

(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))


(setq org-startup-indented t)

; indent to the left always, default value: '2'

;;(setq org-indent-indentation-per-level 2)

(setq org-adapt-indentation nil)

(setq org-image-actual-width nil)
