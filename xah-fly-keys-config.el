
(require 'xah-fly-keys)

;; specify a layout
(xah-fly-keys-set-layout "qwerty")

;; possible values
;; adnw , azerty , azerty-be , beopy , bepo , carpalx-qfmlwy , carpalx-qgmlwb , carpalx-qgmlwy , colemak , colemak-dhm , colemak-dhm-angle , colemak-dhk , dvorak , koy , neo2 , norman , programer-dvorak , pt-nativo , qwerty , qwerty-abnt , qwerty-no (qwerty Norwegian) , qwertz , workman

(xah-fly-keys 1)


(define-key xah-fly-command-map (kbd "a") 'smex)
(define-key xah-fly-command-map (kbd "N") 'isearch-backward)
(define-key xah-fly-command-map (kbd "M") 'idomenu)

(define-key xah-fly-leader-key-map (kbd "s") 'magit)



