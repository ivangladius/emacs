;; M-x package-install evil-lispy
(unless (package-installed-p 'evil-lispy)
  (package-install 'evil-lispy))

;; in your config, load the code with e.g. require
(require 'evil-lispy)

;; make evil-lispy start in the modes you want

(add-hook 'lisp-mode-hook #'evil-lispy-mode)
(add-hook 'emacs-lisp-mode-hook #'evil-lispy-mode)
(add-hook 'clojure-mode-hook #'evil-lispy-mode)
