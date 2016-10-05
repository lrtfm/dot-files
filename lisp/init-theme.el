(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

; (load-theme 'material t)
(load-theme 'molokai t)
; (load-theme 'monokai t)
(setq inhibit-startup-message t)
(global-linum-mode t)
(setq default-cursor-type '(bar . 2))
(setq line-spacing 0.1)
(global-hl-line-mode 1)
(column-number-mode)
(scroll-bar-mode)
(require 'whitespace)
(setq-default whitespace-line-column 80
              whitespace-style       '(face lines-tail))
(add-hook 'prog-mode-hook #'whitespace-mode)
; font and size
(set-default-font "consolas-13")
(if (string-equal system-type "windows-nt")
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "Microsoft Yahei"))))

(provide 'init-theme)
