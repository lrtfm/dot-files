;; clipboard
(setq x-select-enable-clipboard t)
;; (set-clipboard-coding-system 'utf-16le-dos)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-everywhere t)
(ido-mode 1)

;; mouse-3 copy or yank content
(defun x-copy-yank ()
  (interactive)
  (if (use-region-p)
      (kill-ring-save (mark) (point))
    (yank)))

(global-set-key (kbd "<mouse-3>") 'x-copy-yank)
(add-hook 'term-setup-hook
          #'(lambda ()
             (define-key function-key-map "\e[1;9A" [M-up])
             (define-key function-key-map "\e[1;9B" [M-down])
             (define-key function-key-map "\e[1;9C" [M-right])
             (define-key function-key-map "\e[1;2A" [S-up])
             (define-key function-key-map "\e[1;9D" [M-left])))

(winner-mode t)

(defun today ()
  (interactive)
  (let ((system-time-locale "C")) (insert (format-time-string "<%Y-%m-%d %a>"))))

(fset 'my-copy-buffer
   "\C-xrmm\C-m\C-xh\C-[w\C-xrbm\C-m")

(provide 'init-utils)
