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
