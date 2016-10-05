; (add-hook 'c++-mode-hook 'global-company-mode)

(require 'auto-complete-config)  
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")  
; (ac-config-default)

(require 'auto-complete-clang)

(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)
(setq ac-clang-flags  (list 
                       "-IC:/cygwin64/usr/include"
                       "-IC:/cygwin64/lib/gcc/i686-pc-cygwin/5.3.0/include"
                       "-IC:/cygwin64/lib/gcc/i686-pc-cygwin/5.3.0/include/c++"
                       "-IC:/cygwin64/lib/gcc/i686-pc-cygwin/5.3.0/include/c++/i686-pc-cygwin"
                       "-D__MSVCRT__="))
(provide 'init-c++)
