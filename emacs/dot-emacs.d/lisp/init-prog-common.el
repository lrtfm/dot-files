(require-package 'ecb)
(require-package 'ggtags)
(require-package 'rainbow-mode)
(require-package 'rainbow-delimiters)
(require 'rainbow-mode)
(require 'rainbow-delimiters)
;; (add-hook 'prog-mode-hook #'rainbow-mode)
;; (add-hook 'prog-mode-hook #'ggtags-mode)
(add-hook 'prog-mode-hook #'semantic-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-prog-common)
