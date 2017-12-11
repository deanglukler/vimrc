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
Plug 'lambdalisue/battery.vim'

call plug#end()

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

syntax on
filetype plugin on

set encoding=utf-8
set fileencoding=utf-8

set clipboard=unnamed

set nocompatible

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


"""""""""""""""""""""""""""""""

let mapleader = " "

inoremap jj <ESC>
inoremap jkj <ESC>

inoremap jkd <ESC>viwd
inoremap kjd <ESC>ciw

inoremap jkl <ESC>^v$hd"_dd
inoremap dfl <ESC>^v$hc
nnoremap <Leader>l ^v$h
vnoremap <Leader>l v^v$h

nnoremap <Leader>o o<ESC>
inoremap dfo <ESC>o
nnoremap <Leader>O O<ESC>
inoremap dfO <ESC>O
inoremap kjo <ESC>o<ESC>O

"Select all
inoremap jka <ESC>gg0vG$c
nnoremap <Leader>a gg0vG$
vnoremap <Leader>a vgg0vG$

"Comments
vmap <Leader>/ gc
nmap <Leader>/ gcc

" Indentation
nnoremap <Leader>= 10jV10k=

nnoremap <Leader>v ^v$hd"_ddk^
nnoremap <Leader>f :NERDTreeToggle<Enter>

" Buffers
nnoremap <Leader>j :bn<Enter>
nnoremap <Leader>k :bp<Enter>
nnoremap <Leader>w :bd<Enter>

"Fuzzy search
nnoremap <Leader>p :CtrlP<CR>

":e (edit all)
nnoremap <Leader>e :bufdo e<Enter>

nnoremap <Leader>r :!clear && printf '   ' && date -u && echo '--------------- * ----------------\n' && node %<Enter>

nnoremap <Leader>subl :w<Enter>:!/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ./ && clear<Enter>

"delete instead of cut
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

let g:airline#extensions#tabline#enabled = 1

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=%{StatuslineGit()}
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y "file type
set statusline+=\ Buf:%n
set statusline+=\ %{battery#component()}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
