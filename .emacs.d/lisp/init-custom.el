;; init-custom.el
;; define some system relative vars

;; for c++ completion
(if (eq system-type 'window-nt)
    (setq ac-clang-flags
          (list
           "-IC:/MinGW/include"
           "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include"
           "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"
           "-IC:/MinGW/lib/gcc/mingw32/4.8.1/include/c++/mingw32"
           "-D__MSVCRT__="))
  (setq ac-clang-flags
        (list
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5"
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/x86_64-redhat-linux"
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/backward"
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include"
         "-I/usr/local/include"
         "-I/usr/include"))
  )

;; for tex view
(if (eq system-type 'windows-nt)
    (progn (require 'init-sumatra)
      (setq Tex-sumatra-path "c:/Program Files (x86)/SumatraPDF/")
      (setq Tex-emacs-path "d:/Program Files/emacs-24.5/bin/")
      (add-hook 'LaTeX-mode-hook 'TeX-view-select-sumatra)))

;; for lisp
(if (eq system-type 'windows-nt)
    (progn (setq racket-racket-program "d:/Program Files/Racket/Racket.exe"))
  (progn (setq scheme-program-name "mit-scheme")))

;; for my blog
(if (eq system-type 'windows-nt)
    (progn (setq xyz-base-dir "~/Desktop/org-blog"))
  (progn (setq xyz-base-dir "~/github/org-blog")))

(setq author "Yang Zongze")
(setq email "yangzognze@gmail.com")
(setq org-dir (concat xyz-base-dir "/org"))
(setq publishing-dir (concat xyz-base-dir "/public_html"))
(setq html-postamble "<div id=\"disqus_thread\"></div>
<script>
(function () { // DON'T EDIT BELOW THIS LINE
          var d = document, s = d.createElement ('script');
          s.src = 'https://zzy-blog.disqus.com/embed.js';
          s.setAttribute ('data-timestamp', +new Date ());
          (d.head || d.body).appendChild (s);
          }) ();
</script>
<noscript>
  Please enable JavaScript to view the
  <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a>
</noscript>
<script>
(function (i,s,o,g,r,a,m){i ['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i [r].q=i [r].q|| []).push (arguments)},i [r].l=1*new Date ();a=s.createElement(o),
          m=s.getElementsByTagName (o) [0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          }) (window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga ('create', 'UA-97378735-1', 'auto');
ga ('send', 'pageview');
</script>")

(xyz-set-org-publish-project-alist author email org-dir publishing-dir html-postamble)

;;
;; (setq org-default-notes-file "c:/users/yangzongze/desktop/gtd/notes.org")
;; (setq reftex-default-bibliography '("f:/ResearchWorks/LiteratureBib/Laplace.bib"))

;; system encoding
(if (string-equal system-type "windows-nt")
    (progn  (prefer-coding-system 'utf-8-unix)
            (set-language-environment "English")
            (setq system-time-locale "C")))
;; (if (string-equal system-type "windows-nt")
;;     (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;       (set-fontset-font (frame-parameter nil 'font)
;;                         charset
;;                         (font-spec :family "Microsoft Yahei"))))



(if (eq system-type 'windows-nt)
    (progn
      (unless (and (fboundp 'server-running-p)
                   (not (server-running-p)))
        (server-start))))

(provide 'init-custom)
