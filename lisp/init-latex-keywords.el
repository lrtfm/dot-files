
(setq greek-alphabet '("alpha" "beta" "gamma" "Alpha" "Beta" "Gamma"))
;
;(defun highlight-greek-a (face-name a-list)
;  (mapc #'(lambda (keyword)
;            (let ((key-reg (concat "\\\\" keyword)))
;              ; (insert key-reg)
;              ; (insert key-reg)
;              (font-lock-add-keywords 'latex-mode
;                                      `((,key-reg .
;                                        ',face-name)))))
;        a-list))
;
;(highlight-greek-a 'font-lock-keyword-face greek-alphabet)
;
(font-lock-add-keywords 'latex-mode
                        '(("\\\\\[a-z@\]+" . 'font-lock-keyword-face)))

; (setq greek-keywords-with-face '())
(defun create-highlight-list (face-name)
  (setq h-list '())
  (dolist (element greek-alphabet h-list)
    (setq h-list
         (cons `(,(concat "\\\\" element) . ',face-name) h-list))))
 

(setq greek-highlight-list (create-highlight-list 'font-lock-keyword-face))
; (create-highlight-list 'font-lock-keyword-face greek-highlight-list)
(font-lock-add-keywords 'latex-mode greek-highlight-list)

; (font-lock-add-keywords 'latex-mode
;                         `((,(concat "\\(\\\\" (regexp-opt greek-alphabet) "\\)")
;                            1 'font-lock-keyword-face)))
; (defun highlight-greek (face-name)
;   (font-lock-add-keywords 'latex-mode
;                           `(("alpha" . ',face-name)
;                             ("beta" . ',face-name)
;                             ("gamma" . ',face-name)
;                             )))
; 


(provide 'init-latex-keywords)
