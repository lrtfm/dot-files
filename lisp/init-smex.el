(require-package 'smex)
(require 'smex) ; Not needed if you use package.el

;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key [(meta x)]
                (lambda () (interactive)
                  (or (boundp 'smex-cache)
                      (smex-initialize))
                  (global-set-key [(meta x)] 'smex)
                  (smex)))
(global-set-key [(shift meta x)]
                (lambda () (interactive)
                  (or (boundp 'smex-cache)
                      (smex-initialize))
                  (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                  (smex-major-mode-commands)))

(provide 'init-smex)
