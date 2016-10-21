set nocompatible              " be iMproved, required
filetype on
filetype off                  " required
syntax on
set hidden
set laststatus=2
let mapleader = "."
set number
set backspace=indent,eol,start
set incsearch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" airline stuff
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Powerline fonts
let g:airline_powerline_fonts = 1


"" buffer stuff
nmap <Leader>d :bnext<CR>
nmap <Leader>a :bprevious<CR>
nmap <Leader>w :bd<CR>
nmap <Leader>s :w<CR>
nmap <Leader>S :wa<CR>
nmap <Leader>q :%s/\s\+$<CR>

"" ctrlp-funky stuff
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>

"" auto comment
vmap <Leader>c :s!^!//!<CR>
vmap <Leader>C :s!^//!!<CR>
