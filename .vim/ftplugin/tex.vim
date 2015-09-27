set sw=2
" set iskeyword+=:
" set ts=2
" set expandtab
" set shiftwidth=2
" set softtabstop=2
" set winaltkeys=no
" set iskeyword

let g:Tex_Com_frac = "\\frac{<++>}{<++>}<++>"

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
" let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
" let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
" let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
" let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
let g:Tex_FormatDependency_pdf = 'pdf'
" let g:Tex_CompileRule_pdf = 'xelatex -synctex=-1  -src-specials -interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=-1  -src-specials -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'sumatrapdf -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\"" '


