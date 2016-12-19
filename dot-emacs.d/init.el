(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'package)
(require 'init-elpa)
(require 'init-theme)
(require 'init-smex)
(require 'init-auto-complete)

;; for prog language
(require 'init-prog-common)
(require 'init-c++)
(require 'init-lisp)
(require 'init-latex)
(require 'init-python)
(require 'init-matlab)
(require 'init-org-mode)
(require 'init-web-mode)
(require 'init-windows-local)

(unless (and (fboundp 'server-running-p)
             (not (server-running-p)))
  (server-start))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "gold"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green yellow"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "medium turquoise"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "royal blue"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "dark magenta"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "magenta")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/Desktop/gtd/main-work.org" "~/Desktop/gtd/learn-new-skills.org" "~/Desktop/gtd/org-notes.org"))))
