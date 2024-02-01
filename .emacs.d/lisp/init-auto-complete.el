(require-package 'auto-complete)
(require-package 'yasnippet)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'yasnippet)
(yas-global-mode 1)
(yas-minor-mode-on)
(global-auto-complete-mode t)

(ac-config-default)
;; (ac-set-trigger-key "TAB")
(setq ac-auto-start nil)
;; (setq ac-quick-help-delay 0.5)

(setq-default ac-sources '(ac-source-abbrev
                           ac-source-dictionary
                           ac-source-filename
                           ac-source-yasnippet
                           ac-source-words-in-same-mode-buffers))

(define-key ac-mode-map  [(control tab)] 'auto-complete)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(add-to-list 'ac-modes 'latex-mode)
(add-to-list 'ac-modes 'LaTex-mode)

(provide 'init-auto-complete)
