execute pathogen#infect()
Helptags

syntax enable

filetype indent on

" This causes autoindent to leave trailing whitespace
"inoremap <CR> <CR>x<BS>

set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=8
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

if version >= 703
"    set relativenumber
    set undodir=~/.vim/undodir
    set undolevels=1000
    set undoreload=10000
    set undofile
    set colorcolumn=80
endif

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap <tab> %
vnoremap <tab> %

"set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=tab:▸\ ,eol:\ ,trail:·

" Map arrow keys in normal mode to window changes
nnoremap <up> <C-w>k
nnoremap <down> <C-w>j
nnoremap <left> <C-w>h
nnoremap <right> <C-w>l

" Disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

" Map F1 to escape in case we miss our target
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Save file when the focus is lost
"au FocusLost * :wa

" Minus goes to end of line
nnoremap - $

" Faster switches between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


colorscheme lucius
LuciusLight
"colorscheme jellybeans

if has("gui_running")
    set guifont=Sauce_Code_Powerline:h18
    " no scrollbar on the right side
    set guioptions-=r
endif

let mapleader = ","
noremap <leader><space> :noh<cr>

filetype on
au BufNewFile,BufRead *.wsgi set filetype=python
au BufNewFile,BufRead *.asciidoc setlocal filetype=asciidoc
au BufNewFile,BufRead *.md setlocal filetype=mkd
au FileType make setlocal noexpandtab
au BufNewFile,BufRead *.tex setlocal spell

" Airline stuff
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

" These map the function navigation motions to use end-of-line braces
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>
