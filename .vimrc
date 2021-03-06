set nocompatible
filetype on
syntax enable
set background=dark
colorscheme solarized
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

"setting localleader to <cr>
let maplocalleader = "\<cr>"

"shortcut for sourcing the .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"simulating CTR-A
nnoremap <c-a> ggvG$

"simulating CTR-C
vnoremap <c-c> v`<"+y`>

"simulating CTR-V
nnoremap <c-v> "+p


set textwidth=120


"--------------------------------python specific---------------------

augroup filetype_python
    autocmd!
    "single line comment in python
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

    "commenting multiple lines in python
    autocmd FileType python vnoremap <buffer> <localleader>c v`<I'''<esc>`>A'''<esc>

augroup end

"--------------------------------------------------------------------

"--------------------------------java specific---------------------

augroup filetype_java

    autocmd!
    "single line commenting in java
    autocmd FileType java nnoremap <buffer> <localleader>c I//<esc> 

    "commenting multiple lines in python
    autocmd FileType java vnoremap <buffer> <localleader>c v`<I/*<esc>`>A*/<esc>

    "abbreviation for public static void main
    autocmd FileType java iabbrev publicmain public static void main(String[] args)

    "abbreviation for System.out.println
    autocmd FileType java iabbrev sysout System.out.println
    
    "for automatically inserting the closing curly braces on the encounter of {<cr
    autocmd FileType java inoremap <buffer> {<cr> {<cr>}<esc>ko

    "for completing the parantheses and getting into insert mode
    autocmd FileType java inoremap <buffer> (<space> ()<esc>i

    "for auto-completing double quotes and getting into the insert mode
    autocmd FileType java inoremap <buffer> "<space> ""<esc>i

augroup end

"-----------------------------------------------------------------------
