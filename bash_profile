# tmux + guile + tslime 开启scheme编码环境
alias lisp='if tmux ls 2>/dev/null | grep lisp >/dev/null 2>&1; then  tmux a -t lisp ; else  tmux new -s lisp \; splitw -l6 guile \; selectp -t 0; fi'
