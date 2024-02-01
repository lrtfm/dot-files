;; init-custom.el
;; define some system relative vars

(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "backups") t)))

;; Mouse scrolling in terminal emacs
(unless (display-graphic-p)
  ;; activate mouse-based scrolling
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line)
  )

;; for c++ completion
(setq ac-clang-flags
        (list
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5"
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/x86_64-redhat-linux"
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/backward"
         "-I/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include"
         "-I/usr/local/include"
         "-I/usr/include")
  )


;; for lisp
(setq scheme-program-name "mit-scheme")

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

(provide 'init-custom)
