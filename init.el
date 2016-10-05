;; init.el
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
;; (package-initialize)

(require 'init-elpa)

(require 'init-theme)
(require 'init-latex)
(require 'init-lisp)
(require 'init-python)
(require 'init-smex)
(require 'init-c++)
;; clipboard
(setq x-select-enable-clipboard t)
;; (set-clipboard-coding-system 'utf-16le-dos)

(unless (and (fboundp 'server-running-p)
             (not (server-running-p)))
  (server-start))
