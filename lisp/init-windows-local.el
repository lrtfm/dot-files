;; TODO
;; put thsese in init-local.el

;; clipboard
(setq x-select-enable-clipboard t)
;; (set-clipboard-coding-system 'utf-16le-dos)

;; mouse-3 copy or yank content
(defun x-copy-yank ()
  (interactive)
  (if (use-region-p)
      (kill-ring-save (mark) (point))
    (yank)))

(global-set-key (kbd "<mouse-3>") 'x-copy-yank)

;; for tex
;; (setq TeX-view-program-list
;;       `(("SumatraPDF"
;;          ("\"c:/Program Files (x86)/SumatraPDF/SumatraPDF.exe\" -reuse-instance"
;;           (mode-io-correlate
;;            ,(concat
;;              " -forward-search %b %n -inverse-search "
;;              "\"d:/Program Files/emacs-24.5/bin/emacsclientw.exe --no-wait "
;;              "--alternate-editor='d:/Program Files/emacs-24.5/bin/runemacs.exe'"
;;              " -n +%%l %%f\""))
;;           " %o"))))

(TeX-view-program-list-add  (assemble-view-program-sumatra
                             "c:/Program Files (x86)/SumatraPDF"
                             "d:/Program Files/emacs-24.5"))
(TeX-view-select-sumatra)

;; fot c++
(setq ac-clang-flags  (list
                       "-IC:/MinGW/include"
                       "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include"
                       "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"
                       "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include/c++/mingw32"
                       "-D__MSVCRT__="))

;; fot lisp
(setq racket-racket-program "d:/Program Files/Racket/Racket.exe")

(provide 'init-windows-local)
