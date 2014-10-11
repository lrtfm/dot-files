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
"set cindent
"set mouse=a

filetype plugin indent on

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

" 使用 tmux + tslime.vim + guile 编写 scheme 代码
" tslime:   
" http://www.vim.org/scripts/script.php?script_id=3023
" https://github.com/sjl/tslime.vim 
" 加载正在编辑的文件
nnoremap <C-C>f :call Send_to_Tmux("(load \"". @% . "\")\n")<CR>

" paredit.vim  
" http://www.vim.org/scripts/script.php?script_id=3998
" https://bitbucket.org/kovisoft/paredit
" for lisp
