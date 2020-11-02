set number
set mouse=a
set numberwidth=1
set clipboard^=unnamed,unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set ts=4
set relativenumber
set laststatus=2
set cursorcolumn
set cursorline

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'StanAngeloff/php.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'

Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"set term=xterm-257color
set background=dark
colorscheme gruvbox
let NERDTreeQuitOnOpen=1

"status line
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s1)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>

nmap <Leader>r :!node %<CR>
nmap <Leader>p :Prettier<CR>

au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

set tags=.git/tags
