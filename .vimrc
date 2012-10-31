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
set showcmd
set showmode
set number
set ruler

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

"----------------------------------------------------------------------"
" key binds                                                            "
"----------------------------------------------------------------------"
" plugin specific                      "
"--------------------------------------"
" django surround "
"-----------------"

" insert {%  %} ready for input
map <leader>t i<C-g>s%
" insert {{  }} ready for input
map <leader>v i<C-g>sv
" insert {% block  %} ready for input
map <leader>b i<C-g>s%block <Esc>a
" insert {% endblock %} , move cursor to end-of-line
map <leader>B i<C-g>s%endblock<Esc>$

"----------------------------------------------------------------------"
