(require-package 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

(global-auto-complete-mode t)

; (ac-config-default)
; (ac-set-trigger-key "TAB")
(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)

(setq-default ac-sources '(ac-source-abbrev
                           ac-source-dictionary
                           ac-source-words-in-same-mode-buffers))

(define-key ac-mode-map  [(control tab)] 'auto-complete)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(add-to-list 'ac-modes 'latex-mode)

(provide 'init-auto-complete)
