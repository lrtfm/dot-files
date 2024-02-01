(require 'org)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; for org latex
(require 'tog-mode)
(defun gds/reveal-togs ()
  "Enable toggling between org-mode and latex-mode."
  (interactive)
  (tog-setup (list 'latex-mode 'org-mode)))

(if (version< org-version "8.0") nil (require 'ox-latex))

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
                  ;; "\\setCJKmainfont{SimSun}\n"
                  ;; "\\setCJKsansfont{KaiTi}\n"
                  ;; "\\setCJKmonofont{SimHei}"
                  )))

(setq org-latex-pdf-process
      '("latexmk -xelatex -outdir=%o %f"))

(require-package 'htmlize)
(require 'htmlize)
(setq org-html-head-include-default-style nil)

(defun xyz-set-org-publish-project-alist (author email org-dir publishing-dir html-postamble)
  (setq org-publish-project-alist
        `(("blog-notes"
           :base-directory ,org-dir
           :base-extension "org"
           :publishing-directory ,publishing-dir
           :recursive t
           :publishing-function org-html-publish-to-html
           :headline-levels 4             ; Just the default for this project.
           :auto-preamble t
           :section-numbers nil
           :author ,author
           :email ,email
           :auto-sitemap t                ; Generate sitemap.org automagically...
           :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
           :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
           :sitemap-sort-files anti-chronologically
           :sitemap-file-entry-format "%d %t"
           :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/worg.css\" />"
           :html-postamble ,html-postamble
         )
        ("blog-static"
         :base-directory ,org-dir
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory ,publishing-dir
         :recursive t
         :publishing-function org-publish-attachment)
        ("blog" :components ("blog-notes" "blog-static"))
        )))

;; (setq org-publish-use-timestamps-flag nil)

(setq org-src-fontify-natively t)

(eval-after-load 'org
  '(setf org-highlight-latex-and-related '(latex)))
;;(setq org-highlight-latex-and-related '(latex entities))
;; ;; In earlier versions
;; (eval-after-load 'org
;;   '(setf org-highlight-latex-fragments-and-specials t))

;; (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'org-edit-latex-mode)
(setq org-use-sub-superscripts '{})

(provide 'init-org-mode)
