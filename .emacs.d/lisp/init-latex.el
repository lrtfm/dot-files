;; init-latex.el

(require-package 'auctex)
(require-package 'cdlatex)
(require 'cl)

(add-hook 'LaTeX-mode-hook 'rainbow-delimiters-mode)
(add-hook 'latex-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
;; (add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode

(setq-default TeX-engine 'xetex)
(setq TeX-parse-self t)
(setq TeX-auto-save t)

(setq LaTeX-electric-left-right-brace nil)
(setq TeX-electric-sub-and-superscript 1)

;; (require 'init-latex-keywords)

;; forward and inverse search
(setq-default TeX-comman-extra-options "-shell-escape")
(setq-default TeX-source-correlate-mode t)
(setq-default TeX-source-correlate-start-server t)

;; fix error with 'png
(setq preview-image-type 'pnm)

;; enable reftex
(setq reftex-plug-into-auctex t)

;;; http://www.emacswiki.org/emacs/TN
(require 'tex-buf)
(defun TeX-command-default (name)
  "Next TeX command to use. Most of the code is stolen from `TeX-command-query'."
  (cond ((if (string-equal name TeX-region)
             (TeX-check-files (concat name "." (TeX-output-extension))
                              (list name)
                              TeX-file-extensions)
           (TeX-save-document (TeX-master-file)))
         TeX-command-default)
;        ((and (memq major-mode '(doctex-mode latex-mode))
;              (TeX-check-files (concat name ".bbl")
;                               (mapcar 'car (LaTeX-bibliography-list))
;                               BibTeX-file-extensions))

        ;; fixbugs: change .tex file will not re-run bibtex
        ;; add by yangzongze@gmail.com
        ((and (memq major-mode '(doctex-mode latex-mode))
              LaTeX-bibliography-list    ;; avoid run bibtex if this is empty
              (TeX-check-files (concat name ".bbl")
                               (append (mapcar 'car
                                               (LaTeX-bibliography-list))
                                       (list name))
                               (append BibTeX-file-extensions (list "tex"))))

         ;; We should check for bst files here as well.
         TeX-command-BibTeX)
        ((TeX-process-get-variable name
                                   'TeX-command-next
                                   TeX-command-Show))
        (TeX-command-Show)))

;;;  from wiki
(defcustom TeX-texify-Show t
  "Start view-command at end of TeX-texify?"
  :type 'boolean
  :group 'TeX-command)

(defcustom TeX-texify-max-runs-same-command 5
  "Maximal run number of the same command"
  :type 'integer
  :group 'TeX-command)

(defun TeX-texify-sentinel (&optional proc sentinel)
  "Non-interactive! Call the standard-sentinel of the current LaTeX-process.
If there is still something left do do start the next latex-command."
  (set-buffer (process-buffer proc))
  (funcall TeX-texify-sentinel proc sentinel)
  (let ((case-fold-search nil))
    (when (string-match "\\(finished\\|exited\\)" sentinel)
      (set-buffer TeX-command-buffer)
      (unless (plist-get TeX-error-report-switches (intern (TeX-master-file)))
        (TeX-texify)))))

(defun TeX-texify ()
  "Get everything done."
  (interactive)
  (let ((nextCmd (TeX-command-default (TeX-master-file)))
        proc)
    (if (and (null TeX-texify-Show)
             (equal nextCmd TeX-command-Show))
        (when  (called-interactively-p 'any)
          (message "TeX-texify: Nothing to be done."))
      (TeX-command nextCmd 'TeX-master-file)
      (when (or (called-interactively-p 'any)
                (null (boundp 'TeX-texify-count-same-command))
                (null (boundp 'TeX-texify-last-command))
                (null (equal nextCmd TeX-texify-last-command)))
        (mapc 'make-local-variable '(TeX-texify-sentinel TeX-texify-count-same-command TeX-texify-last-command))
        (setq TeX-texify-count-same-command 1))
      (if (>= TeX-texify-count-same-command TeX-texify-max-runs-same-command)
          (message "TeX-texify: Did %S already %d times. Don't want to do it anymore." TeX-texify-last-command TeX-texify-count-same-command)
        (setq TeX-texify-count-same-command (1+ TeX-texify-count-same-command))
        (setq TeX-texify-last-command nextCmd)
        (and (null (equal nextCmd TeX-command-Show))
             (setq proc (get-buffer-process (current-buffer)))
             (setq TeX-texify-sentinel (process-sentinel proc))
             (set-process-sentinel proc 'TeX-texify-sentinel))))))

(add-hook 'LaTeX-mode-hook
          '(lambda ()
             (define-key LaTeX-mode-map (kbd "C-c C-a") 'TeX-texify)))

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(provide 'init-latex)
