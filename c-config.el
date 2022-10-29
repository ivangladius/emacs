(add-hook 'asm-mode-set-comment-hook '(lambda ()
					(setq asm-comment-char ?#)))


(add-hook 'asm-mode-hook (lambda ()
			   (setq electric-indent-mode -1)
			   (setq c-basic-offset 8)))




(setq kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions))



(defun llvm-lineup-statement (langelem)
  (let ((in-assign (c-lineup-assignments langelem)))
    (if (not in-assign)
        '++
      (aset in-assign 0
            (+ (aref in-assign 0)
               (* 2 c-basic-offset)))
      in-assign)))

(c-add-style "llvm.org"
             '("gnu"
	       (fill-column . 80)
	       (c++-indent-level . 2)
	       (c-basic-offset . 2)
	       (indent-tabs-mode . nil)
	       (c-offsets-alist . ((arglist-intro . ++)
				   (innamespace . 0)
				   (member-init-intro . ++)
				   (statement-cont . llvm-lineup-statement)))))

(add-hook 'c-mode-hook
         '(lambda ()
            (c-set-style "llvm.org")
            ))

(add-hook 'c++-mode-hook
         '(lambda ()
            (c-set-style "llvm.org")
            ))


