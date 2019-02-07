set nocompatible
filetype plugin on

set relativenumber
set showcmd
syntax on
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set incsearch
set wildmenu
set wildmode=full
set history=200
set nrformats=

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
