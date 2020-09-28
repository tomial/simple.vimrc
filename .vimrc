call plug#begin('~/.vim/plugins')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'

Plug 'joshdick/onedark.vim'

Plug 'ayu-theme/ayu-vim'

Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'

Plug 'mattn/emmet-vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'cocopon/iceberg.vim'

Plug 'arcticicestudio/nord-vim'


call plug#end()

" EDITOR_SETTINGS "

" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" set theme to onedark
syntax on
set termguicolors 
colorscheme nord

set number
set mouse=a
" EDITOR_SETTINGS "
filetype on
filetype plugin on
filetype indent on

set encoding=UTF-8


" coc.nvim
source ~/.vim/coc.vim 
source ~/.vim/vim-go.vim
