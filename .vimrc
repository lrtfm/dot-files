set nocompatible              " be iMproved, required
let $LANG = 'en'
set langmenu=en
" let $path="D:/Program\ Files\ (x86)/LLVM/bin;D:/Python27;C:/Windows/system32;C:/Windows;D:/Program\ Files\ (x86)/Vim/vim74"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'scrooloose/syntastic'
if has("unix")
    Plugin 'Valloric/YouCompleteMe'
endif
" Plugin 'Lokaltog/vim-powerline.git'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'Rip-Rip/clang_complete'
Plugin 'The-NERD-tree'
" Plugin 'taglist.vim'
Plugin 'vim-niji'
" Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'molokai'
" Plugin 'snipMate'
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
colors molokai

if has("win32")
    " au GUIEnter * simalt ~x
    set guifont=Consolas:h13:cANSI
elseif has("unix")
    set t_Co=256
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
highlight Cursor guibg=white guifg=black
" highlight iCursor guifg=red guibg=yellow
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=1\x7"
" set guicursor=n-v-c:block,o:block,i-ci:block,r-cr:block,sm:block

" hi Visual term=reverse cterm=reverse guibg=grey guifg=black
hi Visual term=reverse ctermbg=black ctermfg=white guibg=#590959

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
set backspace=indent,eol,start"

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

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" for tex
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:tex_isk='48-57,a-z,A-Z,192-255,:'
let g:Tex_GotoError=0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='wombat'
let g:airline_theme='molokai'
" let g:airline_theme='luna'
" let g:airline_theme='solarized'
" let g:airline_powerline_fonts = 1

" let g:ycm_global_ycm_extra_conf = 'C:/Users/YangZongze/vimfiles\bundle\YouCompleteMe\third_party\ycmd\cpp\ycm\.ycm_extra_conf.py'

" for clang_complete
" set completeopt=menu,longest
" let g:clang_auto_select=1
" let g:clang_complete_auto=1     " automatically complete after -> . ::
" let g:clang_hl_errors=1         " highlight the warnings and error the same way clang does it
" let g:clang_complete_copen=0    " open quickfix window on error
" let g:clang_periodic_quickfix=0 " periodically update the quickfix window
" let g:clang_snippets=0
" let g:clang_close_preview=1
" let g:clang_use_library=1
" let g:clang_user_options='-stdlib=libc++ -std=c++11'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1 


