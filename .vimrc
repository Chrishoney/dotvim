" .vimrc <chrishoney@gmail.com>                                        "
"----------------------------------------------------------------------"
" settings                                                             "
"----------------------------------------------------------------------"
" general                              "
"--------------------------------------"
" startup "
"---------"

" enable pathogen to load plugins from ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" colorscheme "
"-------------"
set background=dark
colorscheme solarized
syntax enable

" display "
"---------"
set laststatus=2
set number
set ruler
set showmode
set showcmd

" search "
"--------"
set incsearch

" tab "
"-----"
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

" document "
"----------"
set encoding=utf-8
set autoindent
set textwidth=80

"--------------------------------------------------------------------"
" settings                                                           "
"--------------------------------------------------------------------"
" filetype specific                    "
"--------------------------------------"
" python "
"--------"
autocmd BufRead *.py set cinwords=if,elif,else,for,while,with,try,except,finally,def,class
autocmd BufRead *.py set textwidth=79
autocmd BufRead *.py let python_highlight_space_errors=1

" dotfiles "
"----------"
au BufNewFile,BufRead .bashrc,.bash_profile,.bash_aliases,.bash_functions,.profile,.bashcolors set filetype=sh

" html "
"------"
au BufNewFile,BufRead *.html set filetype=htmldjango textwidth=120
au BufNewFile,BufRead *.html set tabstop=4 softtabstop=2 shiftwidth=2

" markdown "
"----------"
au BufRead *.md set filetype=markdown

"--------------------------------------------------------------------"
" settings                                                           "
"--------------------------------------------------------------------"
" plugins                              "
"--------------------------------------"
" minibufexpl "
"-------------"
" enable ctrl+tab to switch buffers
let g:miniBufExplMapCTagSwitchBufs = 1

"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" general                              "
"--------------------------------------"
" convenience "
"-------------"
" insert mode, jj = <Esc>
:imap jj <Esc>

" two of the most frequently used commands in vim have terrible default
" behavior. this should be enabled by default.
:command W w
:command Q q
:command Wq wq
:command WQ wq

"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" leader key                           "
"--------------------------------------"
" setup "
"-------"

" set mapleader
let mapleader = ','
" make testing vimrc easier
nnoremap <silent> <leader>rc :source $MYVIMRC<cr>

" utility "
"---------"

" get output from a shell command
nnoremap <leader>rd :read !

" mode toggling "
"---------------"

" paste
set pastetoggle=<leader>p
" hlsearch
noremap <leader>h :set hlsearch! hlsearch?<cr>
" line numbers
noremap <leader>n :set nu!<cr>

" split windows "
"---------------"

" switch to window in <direction>
" legend: <C-=ctrl, <S-=shift
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>
" resize window by 1 or 10 rows
nnoremap <leader>[ <C-w>-
nnoremap <leader>] <C-w>+
nnoremap <leader>[[ 10<C-w>-
nnoremap <leader>]] 10<C-w>+

" buffers "
"---------"

" add new buffer
nnoremap <leader>bad :bad 

" show buffers
nnoremap <leader>b :buffers<CR>

" prev/next buffer
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>

" jump to first/last buffer
nnoremap <leader>bf :bf<CR>
nnoremap <leader>bl :bl<CR>
