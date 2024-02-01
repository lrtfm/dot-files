(require-package 'better-defaults)
(require-package 'powerline)
(require-package 'smart-mode-line)
(require-package 'smart-mode-line-powerline-theme)
(require-package 'material-theme)
; (require-package 'molokai-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
; (load-theme 'material t)
(load-theme 'molokai t)
; (load-theme 'monokai t)
(setq inhibit-startup-message t)

;;; line number begin
;; (add-hook 'linum-before-numbering-hook
;;           (lambda ()
;;             (setq-local linum-format-fmt
;;                         (let ((w (length (number-to-string
;;                                           (+ 10 (count-lines (point-min) (point-max)))))))
;;                           (concat "%" (number-to-string (+ 1 w)) "d ")))))

;; (defun linum-format-func (line)
;;   (concat
;;    (propertize (format linum-format-fmt line) 'face 'linum)))

;; (setq linum-format 'linum-format-func)
;; (global-linum-mode t)
;;; line number end

(setq default-cursor-type '(bar . 2))
(setq line-spacing 0.1)
(global-hl-line-mode 1)
(column-number-mode)
; (scroll-bar-mode)

(require 'whitespace)
(setq-default whitespace-style '(face trailing))
(global-whitespace-mode t)

; font and size
; (set-default-font "consolas-13")

; (setq sml/no-confirm-load-theme t)
; (setq sml/theme 'powerline)
; (sml/setup)

(provide 'init-theme)
