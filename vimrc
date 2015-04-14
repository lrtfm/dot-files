" pathogen:
" http://www.vim.org/scripts/script.php?script_id=2332
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

syntax on
highlight Comment ctermfg=6
set nu
set ruler
set showcmd
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set completeopt-=preview
set nocp
set hlsearch
"hi Search term=standout ctermfg=0 ctermbg=3
hi Search ctermfg=0 ctermbg=7 guibg=Grey
"set cindent
"set mouse=a
"set fileencodings=ucs-bom,gb18030,gb2312,utf-8,default,latin1
" set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,default,latin1

filetype plugin indent on

" for latex-suit
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
function CompileXeTex()
    let oldCompileRule=g:Tex_CompileRule_pdf
    let oldFormatDependency=g:Tex_FormatDependency_pdf
    let g:tex_flavor='xelatex'
    let g:Tex_FormatDependency_pdf = 'pdf'
    "let g:Tex_MultipleCompileFormats = 'pdf'
    let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode $*'
    call Tex_RunLaTeX()
    let g:tex_flavor='latex'
    let g:Tex_CompileRule_pdf=oldCompileRule
    let g:Tex_FormatDependency_pdf=oldFormatDependency
endfunction

function Mytex()
    "let g:Imap_UsePlaceHolders = 0
    set sw=2
    set ts=2
    set expandtab
    set shiftwidth=2
    set softtabstop=2
    set iskeyword+=:
    inoremap <leader>rl {}_{a}^{}D_{x}^{}<ESC>i
    map <Leader>lx :w<CR>:<C-U>call CompileXeTex()<CR>
    "nnoremap <leader>xe :w<CR>:!xelatex --interaction=nonstopmode <C-R>%<CR>
    autocmd FileType tex call Tex_MakeMap("<Leader>ll", ":w <CR> <Plug>Tex_Compile", 'n', '<buffer>')
    autocmd FileType tex call Tex_MakeMap("<Leader>ll", "<ESC> :w <CR> <Plug>Tex_Compile", 'v', '<buffer>')
    "autocmd FileType tex call Tex_MakeMap('<leader>ll', ':update!<CR>:call Tex_RunLaTeX()<CR>', 'n', '<buffer>')
    "autocmd FileType tex call Tex_MakeMap('<leader>ll', '<ESC>:update!<CR>:call Tex_RunLaTeX()<CR>', 'v', '<buffer>')
endfunction

au BufNewFile,BufRead *.tex call Mytex() 

au BufNewFile,BufRead *.edp setf cpp

" taglist.vim  
" http://www.vim.org/scripts/script.php?script_id=273
" 设置tags  
set tags=tags,../tags,../../tags

let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Auto_Open=0

" The NERD Tree
" http://www.vim.org/scripts/script.php?script_id=1658
" https://github.com/scrooloose/nerdtree
"let loaded_nerd_tree=0
"let NERDTreeIgnore=['\.vim$', '\~$']
let NERDTreeAutoDeleteBuffer=1
let NERDTreeWinSize=25

nmap <F2> :!pctags<CR>
nmap <F3> :TlistToggle<CR>
nmap <F4> :NERDTreeToggle<CR>
let mapleader = ","
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
nnoremap <C-\><C-]> :GtagsCursor<CR>
noremap ,t :Gtags<CR> 
noremap ,r :Gtags -r<CR> 
noremap ,s :Gtags -s<CR> 
noremap ,g :Gtags -g<CR> 

" 使用 tmux + tslime.vim + guile 编写 scheme 代码
" tslime:   
" http://www.vim.org/scripts/script.php?script_id=3023
" https://github.com/sjl/tslime.vim 
" 加载正在编辑的文件
" nnoremap <C-C>f :call Send_to_Tmux("(load \"". @% . "\")\n")<CR>
nnoremap <C-C>f :call Send_to_Tmux("(load \"". getcwd() . "/" . @% . "\")\n")<CR>

" paredit.vim  
" http://www.vim.org/scripts/script.php?script_id=3998
" https://bitbucket.org/kovisoft/paredit
" for lisp

" org-mode
" http://www.vim.org/scripts/script.php?script_id=3642
" https://github.com/jceb/vim-orgmode

" speeddating
" http://www.vim.org/scripts/script.php?script_id=2120
" https://github.com/tpope/vim-speeddating

" vim-niji
" https://github.com/amdt/vim-niji
let mapleader = ","
" for c/c++ file
nnoremap <leader>c i/*<CR><C-R>%<CR><CR><C-R>=strftime("%F %X")<CR><CR><CR>YangZongze yangzongze@gmail.com<CR>/<CR><CR><ESC> 
nnoremap <leader>d i#ifndef <C-R>%<ESC>F vEUf.r_A__<CR>#define <C-R>%<ESC>F vEUf.r_A__<CR><CR>#endif<ESC>k
