set encoding=utf-8
set fileencoding=utf-8

set clipboard=unnamed

set nocompatible

syntax on
filetype plugin on

set number
"set relativenumber

"Spacing styles
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set laststatus=2

set mouse=a

let mapleader = " "

inoremap jj <ESC>
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>j :bn<Enter>
nnoremap <Leader>k :bp<Enter>
nnoremap <Leader>w :bd<Enter>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>e :bufdo e<Enter>
nnoremap <Leader>r :!clear && printf '   ' && date -u && echo '--------------- * ----------------\n' && node %<Enter>
nnoremap <Leader>subl :!/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ./ && clear<Enter>

"delete instead of cut
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

let g:airline#extensions#tabline#enabled = 1

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' "filetree
Plug 'sheerun/vim-polyglot' "language pack
Plug 'kien/ctrlp.vim' "fuzzy finder
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

call plug#end()

