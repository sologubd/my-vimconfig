"============================= 
" System
"=============================
set nocompatible                                 " vi compatible	
filetype plugin indent on

set autoread                                     " Autoread updated file
set nobackup 	                                 " no backup files
set nowritebackup                                " you don't want a backup file while editing
set noswapfile 	                                 " no swap files
set scrolloff=20                                 " Show 10 rows above/below cursor

"=============================
" Interface
"=============================
syntax enable

colorscheme solarized
set background=dark                              " For solarized-dark

set number                                       " Line numbers
set ruler                                        " Ruler
set laststatus=2                                 " Always show status line

"=============================
" Edit
"=============================
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set encoding=utf-8
set backspace=indent,eol,start
set incsearch                                    " Start search before pressing enter
set hlsearch                                     " Search hilght
"=============================
" Hotkeys
"=============================
nmap <C-n> :NERDTreeToggle ~/Dev <CR>
nmap <F3> :TagbarToggle<CR>
nmap <F7> :bprev<CR>
nmap <F8> :bnext<CR>
" Navigate between splits 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"=============================
" Plugins
"=============================
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'                       " File navigation
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'

Plug 'fisadev/FixedTaskList.vim' 
Plug 'mhinz/vim-signify'                         " Git diff
Plug 'majutsushi/tagbar'                         " Class viewer

call plug#end()

"=============================
" Plugin settings
"=============================

" NerdTree
let NERDTreeWinSize=60
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']

" AirLine
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

" TagBar
let g:tagbar_autofocus=0
let g:tagbar_width=50

"=============================
" Python
"=============================
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Green
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

