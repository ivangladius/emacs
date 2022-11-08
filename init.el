

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)



;;(global-font-lock-mode -1)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   

(global-flycheck-mode)

(setq inferior-lisp-program "sbcl")


(setq-default abbrev-mode t)
(setq save-abbrevs nil)

(setq abbrev-file-name "~/.emacs.d/latex-abbrev-config.el")


(load "~/.emacs.d/yassnippet-config")

(load "~/.emacs.d/latex-config")

(load "~/.emacs.d/org-config")

(load "~/.emacs.d/evil/evil-config")

(load "~/.emacs.d/scripts")

(load "~/.emacs.d/treemacs-config")

(load "~/.emacs.d/projectile-config")

(load "~/.emacs.d/settings")

(load "~/.emacs.d/eshell-config")

;;(load "~/.emacs.d/helm-config")

;;(load "~/.emacs.d/helm-my-config")

;;(load "~/.emacs.d/helm-swoop-config")

;; (load "~/.emacs.d/xah-fly-keys-config")


;; (load "~/.emacs.d/ivy-config")



(load "~/.emacs.d/ido-config")

(load "~/.emacs.d/company-config")

(load "~/.emacs.d/idomenu")

(load "~/.emacs.d/java-config")

(load "~/.emacs.d/c-config.el")

(load "~/.emacs.d/emojify-config")

(load "~/.emacs.d/clang-format-config")

(load "~/.emacs.d/workgroup-config")

(load "~/.emacs.d/tramp-config.el")

;; IMPORT AT THE END TO UNBIND KEYS FROM OTHER PACKAGES WHICH I DID NOT SET OR LIKE
(load "~/.emacs.d/global-keys")


;;(shell-command "setxkbmap -option caps:escape")
;;(shell-command "setxkbmap -option caps:escape")










(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(smart-mode-line-dark))
 '(custom-safe-themes
   '("ecc077ef834d36aa9839ec7997aad035f4586df7271dd492ec75a3b71f0559b3" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "a8950f7287870cd993d7e56991a45e1414a09d97e4fbf08f48973a1381bc7aaf" "1e8865a3e23ff9c3f4f651217a6f565cb1cc09575c1d7a68b25e24bd3495ff4c" default))
 '(package-selected-packages
   '(slime dired-sidebar auto-complete-auctex auctex org-superstar org-bullets evil-org ido-vertical-mode ranger evil-collection jedi treemacs-tab-bar treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil helm-swoop magit magithub auto-sudoedit borland-blue-theme solarized-theme workgroups emojify helm-lsp which-key yasnippet projectile use-package flycheck lsp-ui lsp-java lsp-mode company smart-mode-line quickrun ace-window counsel ivy xah-fly-keys)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "dark blue" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 165 :width normal :foundry "Xos4" :family "Terminus"))))
 '(dired-directory ((t (:foreground "red" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "snow4"))))
 '(font-lock-constant-face ((t nil)))
 '(font-lock-function-name-face ((t (:foreground "yellow"))))
 '(font-lock-keyword-face ((t nil)))
 '(font-lock-preprocessor-face ((t nil)))
 '(font-lock-string-face ((t (:foreground "yellow"))))
 '(font-lock-type-face ((t nil)))
 '(font-lock-variable-name-face ((t nil)))
 '(helm-bookmark-gnus ((t (:extend t :foreground "red"))))
 '(helm-ff-file-extension ((t (:extend t :foreground "red"))))
 '(wg-command-face ((t (:foreground "blue"))))
 '(wg-filename-face ((t (:foreground "blue"))))
 '(wg-message-face ((t (:foreground " blue"))))
 '(wg-mode-line-face ((t (:foreground "blue"))))
 '(wg-previous-workgroup-face ((t (:foreground "blue")))))
