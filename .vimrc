1   set nocompatible
  1 filetype plugin on
  2 
  3 set relativenumber
  4 set number
  5 set showcmd
  6 syntax on
  7 set hlsearch
  8 nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
  9 set incsearch
 10 set wildmenu
 11 set wildmode=full
 12 set history=200
 13 
 14 set nrformats=
 15 set shiftwidth=4 softtabstop=4 expandtab
 16 
 17 cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
 18 
 19 call plug#begin('~/.vim/plugged')
 20 Plug 'https://github.com/majutsushi/tagbar.git'
 21 Plug 'morhetz/gruvbox'
 22 Plug 'scrooloose/nerdtree'
 23 Plug 'Xuyuanp/nerdtree-git-plugin'
 24 Plug 'https://github.com/Valloric/YouCompleteMe.git'
 25 Plug 'https://github.com/godlygeek/tabular.git'
 26 call plug#end()
 27 
 28 nmap <F8> :TagbarToggle<CR>
 29 nmap <F7> :NERDTreeToggle<CR>
 30 colorscheme gruvbox
 31 set background=dark

