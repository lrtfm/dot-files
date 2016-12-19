(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(require 'ox-latex)
(setq org-latex-default-packages-alist
      `(("" "xeCJK" t)
        ("T1" "fontenc" t)
        ("" "fixltx2e" nil)
        ("" "graphicx" t)
        ("" "longtable" nil)
        ("" "float" nil)
        ("" "wrapfig" nil)
        ("" "rotating" nil)
        ("normalem" "ulem" t)
        ("" "amsmath" t)
        ("" "textcomp" t)
        ("" "marvosym" t)
        ("" "wasysym" t)
        ("" "amssymb" t)
        ("" "hyperref" nil)
        ,(concat  "\\tolerance=100\n"
                  "\\setCJKmainfont{SimSun}\n"
                  "\\setCJKsansfont{KaiTi}\n"
                  "\\setCJKmonofont{SimHei}")))


(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f"))

(setq org-src-fontify-natively t)

(provide 'init-org-mode)
