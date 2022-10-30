;; CLANG
(require 'clang-format)
(setq clang-format-style "file")
(setq exec-path (append exec-path '("/usr/bin/clang-format-10")))
(global-set-key [C-M-tab] 'clang-format-buffer)

