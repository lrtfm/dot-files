;              lower     upper
(setq greek '("alpha"   ; A
              "beta"    ; B
              "gamma"   "Gamma"
              "delta"   "Delta"
              "epsilon" ; E
              "zeta"    ; Z
              "eta"     ; E
              "theta"   "Theta"
              "iota"    ; I
              "kappa"   ; K
              "lambda"  "Lambda"
              "mu"      ; M
              "nu"      ; N
              "omicron" ; (
              "pi"      "Pi"
              "rho"     ; R
              "sigma"   "Sigma"
              "tau"     ; T
              "upsilon" "Upsilon"
              "phi"     "Phi"
              "chi"     ; X
              "psi"     "Psi"
              "omega"   "Omega"))
(setq others '("frac"
               "in" "cap" "forall"
               "big" "Big"
               "left" "right"
               "int" "limits"
               "cdots" "ldots"
               "prescript"
               "matchcal"
               "infty"
               "rightarrow"
               "leftarrow"
               "partial"))

(setq font-latex-match-function-keywords '())
(dolist (elt greek font-latex-match-function-keywords)
  (setq font-latex-match-function-keywords
        (cons `(,elt "")
              font-latex-match-function-keywords)))

(dolist (elt others font-latex-match-function-keywords)
  (setq font-latex-match-function-keywords
        (cons `(,elt "")
              font-latex-match-function-keywords)))

(provide 'init-latex-keywords)
