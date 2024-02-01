(defvar Tex-sumatra-path "")
(defvar Tex-emacs-path "")
(defun assemble-view-program-sumatra (sumatra-path emacs-path)
  (message sumatra-path)
  (message emacs-path)
  `("SumatraPDF"
        (,(concat "\"" sumatra-path  "SumatraPDF.exe" "\" -reuse-instance")
         (mode-io-correlate
          ,(concat " -forward-search %b %n -inverse-search \""
                  "\\\"" emacs-path "emacsclientw.exe" "\\\""
                  " --no-wait --alternate-editor="
                  "\\\"" emacs-path "runemacs.exe" "\\\""
                  " -n +%%l %%f\""))
         " %o")))

(defun TeX-view-program-list-add (view-program)
  (add-to-list 'TeX-view-program-list view-program))

(defun TeX-view-select-sumatra ()
  (assq-delete-all 'output-pdf TeX-view-program-selection)
  (TeX-view-program-list-add (assemble-view-program-sumatra
                              Tex-sumatra-path
                              Tex-emacs-path))
  (add-to-list 'TeX-view-program-selection '(output-pdf "SumatraPDF")))

(provide 'init-sumatra)
