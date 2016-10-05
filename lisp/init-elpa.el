;; init-elpa.el

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))

(package-initialize)

; (defun require-package (package)
;   (unless (package-installed-p package)
;     (package-install package)))

(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(defun require-packages (packages)
  (mapc #'require-package packages))

(require-package 'better-defaults)
(require-package 'material-theme)
; (require-package 'molokai-theme)
(require-package 'auto-complete-clang)
(require-package 'smex)
(require-package 'ein)
(require-package 'elpy)
(require-package 'auctex)
(require-package 'racket-mode)

(require-package 'auto-complete)

(provide 'init-elpa)
