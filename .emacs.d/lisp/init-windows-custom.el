;; TODO
;; put thsese in init-local.el

;; system encoding
(prefer-coding-system 'utf-8-unix)
(set-language-environment "English")
(setq system-time-locale "C")

;; for tex view
(require 'init-sumatra)
(setq Tex-sumatra-path "c:/Program Files (x86)/SumatraPDF/")
(setq Tex-emacs-path "d:/Program Files/emacs-24.5/bin/")
(add-hook 'LaTeX-mode-hook 'TeX-view-select-sumatra)

;; fot c++
(setq ac-clang-flags  (list
                       "-IC:/MinGW/include"
                       "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include"
                       "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"
                       "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include/c++/mingw32"
                       "-D__MSVCRT__="))

;; fot lisp
(setq racket-racket-program "d:/Program Files/Racket/Racket.exe")

(setq org-default-notes-file "c:/users/yangzongze/desktop/gtd/notes.org")

(unless (and (fboundp 'server-running-p)
	     (not (server-running-p)))
  (server-start))

(provide 'init-windows-custom)
