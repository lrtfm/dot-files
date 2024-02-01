;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'package)
(require 'init-elpa)
(require 'init-theme)
(require 'init-smex)
(require 'init-auto-complete)
(require 'init-utils)
;; (require 'init-evil)

;; for prog language
(require 'init-prog-common)
(require 'init-c++)
(require 'init-lisp)
(require 'init-latex)
(require 'init-python)
(require 'init-matlab)
(require 'init-org-mode)
;; (require 'init-perl)
(require 'init-haskell)
(require 'init-web-mode)
(require 'init-custom)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-yasnippet-selection-face ((t (:inherit ac-selection-face :background "blue"))))
 '(font-latex-math-face ((t (:foreground "#66d9ef" :slant normal))))
 '(font-latex-script-char-face ((t (:foreground "burlywood"))))
 '(font-latex-sectioning-5-face ((t (:inherit default :foreground "yellow"))))
 '(font-latex-sedate-face ((t (:foreground "burlywood3"))))
 '(font-latex-slide-title-face ((t (:inherit default :foreground "light sky blue" :height 1.0))))
 '(font-latex-subscript-face ((t (:height 1.0))))
 '(font-latex-superscript-face ((t (:height 1.0))))
 '(font-latex-verbatim-face ((t (:inherit fixed-pitch :foreground "burlywood"))))
 '(font-latex-warning-face ((t (:inherit default :foreground "red"))))
 '(font-lock-keyword-face ((t (:inherit default :foreground "#f92672" :weight normal))))
 '(font-lock-type-face ((t (:foreground "#66d9ef" :weight normal))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "gray"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "gold"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green yellow"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "medium turquoise"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "royal blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "dark magenta"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-mismatched-face ((t (:inherit default :foreground "red" :weight bold))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red" :weight bold))))
 '(warning ((t (:foreground "red")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#c5c8c6" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#373b41"))
 '(fci-rule-color "#373b41")
 '(font-latex-fontify-sectioning 1.0)
 '(font-latex-script-display (quote (nil)))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (python . t) (sh . t) (C . t))))
 '(safe-local-variable-values (quote ((org-html-postamble))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil)
 '(yas-global-mode t))
