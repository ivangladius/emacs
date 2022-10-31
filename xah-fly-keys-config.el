
(require 'xah-fly-keys)

;; specify a layout
(xah-fly-keys-set-layout "qwerty")

(xah-fly-keys 1)


(define-key xah-fly-command-map (kbd ",") 'ace-window)
(define-key xah-fly-command-map (kbd "a") 'helm-M-x)


;; (define-key xah-fly-command-map (kbd "a") 'smex)
(define-key xah-fly-command-map (kbd "N") 'isearch-backward)
;; (define-key xah-fly-command-map (kbd "M") 'idomenu)


;;                      COMMAND MODE
(define-key xah-fly-leader-key-map (kbd "s") 'magit)
(define-key xah-fly-leader-key-map (kbd "C") 'wg-create-workgroup)
(define-key xah-fly-leader-key-map (kbd "Q") 'wg-switch-left)


;;                        SPACE i

(define-key xah-fly-leader-key-map (kbd "i") 'xah-fly-Lp2p0-key-map)
(define-key xah-fly-Lp2p0-key-map (kbd "e") 'helm-find-files)

;;                        SPACE k

;; (define-key xah-fly-leader-key-map (kbd "i") 'xah-fly-Rp2p0-key-map)





