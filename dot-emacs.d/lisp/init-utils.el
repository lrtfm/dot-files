;; clipboard
(setq x-select-enable-clipboard t)
;; (set-clipboard-coding-system 'utf-16le-dos)

;; mouse-3 copy or yank content
(defun x-copy-yank ()
  (interactive)
  (if (use-region-p)
      (kill-ring-save (mark) (point))
    (yank)))

(global-set-key (kbd "<mouse-3>") 'x-copy-yank)

(provide 'init-utils)
