

;(shell-command "xmodmap ~/.Xmodmap")

(setq inhibit-splash-screen t)
(transient-mark-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(global-display-line-numbers-mode)
(setq display-line-numbers 'relative)


(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))

(load-theme 'smart-mode-line-light t)

(display-time-mode 1)


(setq indent-tabs-mode t)
(setq tab-width 4)

(setq dired-listing-switches "-allht")

