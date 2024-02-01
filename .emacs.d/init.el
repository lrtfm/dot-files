;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'package)
(require 'init-elpa)
;; (require 'init-theme)
(require 'init-smex)
(require 'init-auto-complete)
(require 'init-utils)
(require 'init-evil)

;; for prog language
(require 'init-prog-common)
(require 'init-c++)
(require 'init-lisp)
(require 'init-latex)
(require 'init-python)
(require 'init-matlab)
(require 'init-org-mode)
(require 'init-haskell)
(require 'init-web-mode)
(require 'init-custom)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(web-mode haskell-mode htmlize matlab-mode smex smart-mode-line-powerline-theme rainbow-mode rainbow-delimiters racket-mode paredit material-theme ggtags evil elpy ein ecb cdlatex better-defaults auto-complete-clang auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
