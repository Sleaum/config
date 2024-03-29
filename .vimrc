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

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/tpope/vim-vinegar.git'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/powerline/powerline.git'
Plug 'https://github.com/hari-rangarajan/CCTree.git'
call plug#end()

"nmap <F2> :!cscope -R<CR>
"nmap <F3> :CCTreeLoadDB cscope.out<CR>
"nmap <F4> :CCTreeTraceReverse<CR>
"nmap <F5> :CCTreeTraceForward<CR>

:nmap <F2> ``
:nmap <F3> :%s/\s\+$//g<CR>
:nmap <F4> gg=G
:nmap <F5> :set list lcs+=space:.<CR>
:nmap <F6> :set nolist<CR>
:map <C-t> <C-w>j
":map <C-s!!!!C-q> <C-w>k
:map <C-c> <C-w>h
:map <C-r> <C-w>l
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> <C-]>
nmap <F10> :!ctags -R .<CR>
nmap <F12> :vertical terminal<CR>

colorscheme gruvbox
set background=dark

"let g:Powerline_symbols = 'fancy'
"set laststatus=2

