set nocompatible
filetype on
syntax on
set nu
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler
set autoindent
filetype plugin indent on

"setting leader key to ,
let mapleader=","

"shortcut for sourcing the .vimrc
nnoremap sv :source $MYVIMRC<cr>

"simulating CTR-A
nnoremap <c-a> ggvGg_

"simulating CTR-C
vnoremap <c-c> v`<"+y`>

"simulating CTR-V
nnoremap <c-v> "+
