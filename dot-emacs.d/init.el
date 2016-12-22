(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/xyz-packages/ecb"))

(require 'package)
(require 'init-elpa)
(require 'init-theme)
(require 'init-smex)
(require 'init-auto-complete)

;; for prog language
(require 'init-prog-common)
(require 'ecb)
(require 'init-c++)
(require 'init-lisp)
(require 'init-latex)
(require 'init-python)
(require 'init-matlab)
(require 'init-org-mode)
;; (require 'init-web-mode)
(require 'init-windows-local)

(unless (and (fboundp 'server-running-p)
             (not (server-running-p)))
  (server-start))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-latex-math-face ((t (:foreground "#66d9ef" :slant normal))))
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
 '(ecb-options-version "2.50")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(font-latex-fontify-sectioning 1.0)
 '(font-latex-script-display (quote (nil)))
 '(font-latex-user-keyword-classes
   (quote
    (("xyz-math-greek"
      ("alpha" "beta" "gamma" "Gamma" "delta" "Delta" "epsilon" "varepsilon" "zeta" "eta" "theta" "Theta" "iota" "kappa" "lambda" "Lambda" "mu" "nu" "omicron" "pi" "Pi" "rho" "sigma" "Sigma" "tau" "upsilon" "Upsilon" "phi" "varphi" "Phi" "chi" "psi" "Psi" "omega" "Omega")
      (:foreground "#f92672")
      noarg)
     ("xyz-math-symbols"
      ("int" "limits" "times" "textstyle" "partial" "exp" "cos" "sin" "tan" "cot" "forall" "sum" "le" "ge" "eq" "in" "notin" "cap" "dots" "cdots" "ldots" "big" "Big" "left" "right")
      (:foreground "#f92672")
      noarg)
     ("xyz-math-commands"
      (("frac" "{{"))
      nil command))))
 '(org-agenda-files
   (quote
    ("~/Desktop/gtd/main-work.org" "~/Desktop/gtd/learn-new-skills.org" "~/Desktop/gtd/org-notes.org"))))
