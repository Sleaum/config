set nocompatible
filetype plugin on

set relativenumber
set number
set showcmd
syntax on
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set incsearch
set wildmenu
set wildmode=full
set history=200
set nrformats=
set shiftwidth=4 softtabstop=4 expandtab
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'morhetz/gruvbox'
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/tpope/vim-vinegar.git'
Plug 'Valloric/YouCompleteMe'
"Plug 'https://github.com/godlygeek/tabular.git'
"Plug 'https://github.com/powerline/powerline.git'
Plug 'https://github.com/hari-rangarajan/CCTree.git'
call plug#end()

nmap <F2> :!cscope -R<CR>
nmap <F3> :CCTreeLoadDB cscope.out<CR>
nmap <F4> :CCTreeTraceReverse<CR>
nmap <F5> :CCTreeTraceForward<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :!ctags -R .<CR>
colorscheme gruvbox
set background=dark

"let g:Powerline_symbols = 'fancy'
"set laststatus=2

