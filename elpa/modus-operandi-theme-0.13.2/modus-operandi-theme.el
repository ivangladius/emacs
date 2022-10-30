;;; modus-operandi-theme.el --- Accessible light theme (WCAG AAA) [DEPRECATED] -*- lexical-binding:t -*-

;; Copyright (c) 2019-2021  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; URL: https://gitlab.com/protesilaos/modus-themes
;; Version: 0.13.2
;; Package-Requires: ((emacs "26.1") (modus-themes "1.2.4"))
;; Keywords: faces, theme, accessibility

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; This package is obsolete.  It has been replaced by `modus-themes',
;; which includes the modus-operandi and modus-vivendi themes.
;;
;; Users updating to the new `modus-themes' package, are advised to read
;; the anouncement on the emacs-devel mailing list:
;; <https://lists.gnu.org/archive/html/emacs-devel/2021-03/msg00300.html>.
;;
;; The web page of the change log is also available:
;; <https://protesilaos.com/modus-themes-changelog/>.
;;
;; An Info manual should be distributed with the Modus themes.
;; Evaluate this form to access it directly:
;;
;;    (info "(modus-themes) Top")

;;; Code:



(if t (require 'modus-themes)) ;; Don't require it during compilation!

(eval-and-compile
  (let ((msg "Package `modus-operandi-theme' is obsolete; use the new `modus-themes'"))
    (if (and noninteractive (fboundp 'byte-compile-warn))
        (byte-compile-warn msg)
      (message "%s" msg))))

(provide 'modus-operandi-theme)

;;; modus-operandi-theme.el ends here
