" PLUG============================================================
call plug#begin('~/.vim/plugged')
" lightline.vim ==status bar
Plug 'itchyny/lightline.vim'
" iceberg == colorscheme
Plug 'cocopon/iceberg.vim'
" gruvbox == colorscheme
Plug 'morhetz/gruvbox'
" vim startify == start page
Plug 'mhinz/vim-startify'
" defx == file tree
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" coc.nvim == completion
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Surround.vim
Plug 'tpope/vim-surround'
" auto pairs
Plug 'jiangmiao/auto-pairs'
" icons
Plug 'ryanoasis/vim-devicons'
call plug#end()
" PLUG============================================================

" COC=============================================================
" Use <TAB> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Use <CR> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<cr>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ====================================================================
"lightline integration
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \   },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   },
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" ====================================================================
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" ====================================================================

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" COC=============================================================

" devicons========================================================
" startify integration
let g:webdevicons_enable_startify = 1
let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"

if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
  let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
else
  let entry_format .= '. entry_path'
endif
  
" devicons========================================================

" NORMAL SETTINGS=================================================
" font
set guifont=Hack:h14
" tab size == 2
" set tab to space
set expandtab
set linespace=2
set tabstop=2
set shiftwidth=2
" set mouse
set mouse=a
set nomousehide
" colorscheme == gruvbox
colorscheme iceberg 
set number
set cmdheight=2
set encoding=UTF-8
filetype on
set autoindent
" NORMAL SETTINGS============================================================
