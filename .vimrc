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

set nocompatible

set encoding=utf-8
set fileencoding=utf-8

set clipboard=unnamed

set autoindent
set smartindent
set expandtab
set softtabstop=2
set shiftwidth=2

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" confirm save on quit
set confirm

"""""""""""""""""""""""""""""""

:let mapleader = " "

inoremap jj <ESC>
inoremap jkj <ESC>

nnoremap ; :

" insert navigation
inoremap dfj <esc>ja
inoremap dfh <esc>i
inoremap dfk <esc>ka
inoremap dfl <esc>la

" pane view selector
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" files
nnoremap <leader>n. :e %:h/
nnoremap <leader>nn :e %:h/
nnoremap <leader>n/ :e 
nnoremap <leader>ndel :call delete(expand('%'))

" leader q mappings
nnoremap <leader>qnu :set nu<cr>
nnoremap <leader>qno :set nonu<cr>

" surround plugin
nmap <leader>ss ysiw
nmap <leader>sc cs
nmap <leader>sd ds
inoremap jkss <ESC>ysiw
imap jksc <ESC>cs
imap jksd <ESC>ds

" autocomplete keyword completion
inoremap ,. <c-n>
inoremap ., <c-p>

" undo and redo
inoremap jku <ESC>u
inoremap kju <ESC>ui
nnoremap <leader>u <C-r>

" Inserting text
inoremap kjA <ESC>A
inoremap kja <ESC>ea
inoremap kjI <ESC>I
inoremap kji <ESC>bi

" Cursor Movement
nnoremap <Leader>j 15j<C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e>
vnoremap <Leader>j 15j<C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e>
nnoremap <Leader>k 15k<C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>
vnoremap <Leader>k 15k<C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>

nnoremap <Leader>l <C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e>
vnoremap <Leader>l <C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e>
nnoremap <Leader>; <C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>
vnoremap <Leader>; <C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>


" highligh word
inoremap jkd <ESC>viwd
inoremap kjd <ESC>ciw
nnoremap <Leader>d viw
vnoremap <Leader>d viw

" Highlight Line
inoremap jki <ESC>^v$h
inoremap kji <ESC>^v$hc
nnoremap <Leader>i ^v$h
vnoremap <Leader>i v^v$h

"quick select
inoremap kjv <ESC>vi
"quick chage
inoremap kjc <ESC>ci

" Inserting lines
nnoremap <Leader>o o<ESC>
inoremap kjo <ESC>o
nnoremap <Leader>O O<ESC>
inoremap kjO <ESC>O
inoremap jkO <ESC>O<ESC>
inoremap jko <ESC>o<ESC>

" paste
inoremap kjp <ESC>]pi
inoremap kjP <ESC>]pA
inoremap jkp <ESC>]pa<ESC>
inoremap jkP <ESC>]pa<ESC>

" End of line
inoremap jk$ <ESC>$

"Beginning of Line
inoremap jk0 <ESC>^
nnoremap <Leader>0 ^
vnoremap <Leader>0 ^

"Select all
nnoremap <Leader>a ggVG
vnoremap <Leader>a vggVG

"Comments
vmap <Leader>/ gc
nmap <Leader>/ gcc
imap jk/ <ESC>gcc

" Indentation
nnoremap <Leader>= 15==
inoremap kj= <ESC>==A
inoremap jk= <ESC>==

" NERDTREE
nnoremap <Leader>bb :NERDTreeToggle<Enter>

" Buffers
nnoremap <Leader>, :bn<Enter>
nnoremap <Leader>m :bp<Enter>
nnoremap <Leader>w :bd<Enter>
nnoremap <Leader><Tab> :e#<CR>
inoremap jk<Tab> <ESC>:e#<CR>
nnoremap <Leader>bn :buffers<CR>:buffer<Space>

"Fuzzy search
nnoremap <Leader>p :CtrlP<CR>

":e (edit all)
nnoremap <Leader>e :bufdo e<Enter>

" switch to grave register
nnoremap <leader>' "_
vnoremap <leader>' "_

"run scripts
nnoremap <Leader>rn :!rnode %<Enter>
vnoremap <Leader>rn :!rnode %<Enter>
nnoremap <Leader>rp :!rpython %<Enter>
vnoremap <Leader>rp :!rpython %<Enter>
nnoremap <Leader>rt :!oet %<Enter>
vnoremap <Leader>rt :!oet %<Enter>

"open sublime
nnoremap <Leader>subl :w<Enter>:!/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ./ && clear<Enter>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
