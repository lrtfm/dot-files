set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'scrooloose/syntastic'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Lokaltog/vim-powerline.git'
Plugin 'bling/vim-airline'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'vim-niji'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'molokai'
Plugin 'snipMate'
" Plugin 'vim-orgmode'
" Plugin 'vim-speeddating'
" Plugin 'vim-paredit'
" Plugin 'tslime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
if has("win32")
    au GUIEnter * simalt ~x
    set guifont=Consolas:h13:cANSI
    colors molokai
endif

set cursorline
highlight CursorLine cterm=NONE ctermbg=235 guibg=#393939
" set cursorcolumn
" highlight CursorColumn guibg=#393939 ctermbg=235
set colorcolumn=80
highlight ColorColumn guibg=#292929 ctermbg=235
" let &colorcolumn=join(range(81,999),",")
" let &colorcolumn="80,".join(range(400,999),",")
highlight Comment guifg=#7E7E7E ctermfg=244
" set guicursor=n-v-c:block,o:block,i-ci:block,r-cr:block,sm:block
highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=red guibg=yellow
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=1\x7"
" set guicursor=n-v-c:block,o:block,i-ci:block,r-cr:block,sm:block

set fileencodings=ucs-bom,utf-8,cp936,gb18030,default,latin1
set nofoldenable
set nu

set ruler
set modeline
set laststatus=2

set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
" set backspace=indent,eol,start"

" set list
set noerrorbells
set t_vb=
set guioptions-=T
" set guioptions-=r
" set guioptions-=m

set shortmess=atI
set mouse=a

let mapleader = ","

autocmd! BufWritePost $MYVIMRC source % 
autocmd BufNewFile,BufRead *.edp setf cpp

" for tex
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:tex_isk='48-57,a-z,A-Z,192-255,:'

