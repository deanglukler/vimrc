syntax on
filetype plugin on

set nocompatible

set encoding=utf-8
set fileencoding=utf-8

set autoindent
set smartindent
set expandtab
set softtabstop=2
set shiftwidth=2

set clipboard=unnamed

hi MatchParen cterm=bold ctermbg=magenta ctermfg=magenta

" confirm save on quit
set confirm

" change cursor insert mode vs normal
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"""""""""""""""""""""""""""""""

:let mapleader = " "

inoremap jj <ESC>

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
nnoremap <leader>n/ :e 

" autocomplete keyword completion
inoremap ,. <c-n>
inoremap ., <c-p>

" undo and redo
inoremap jku <ESC>u
inoremap kju <ESC>ui
nnoremap <leader>u <C-r>

" Inserting text
inoremap kjA <ESC>A
inoremap kje <ESC>ea
inoremap kjI <ESC>I
inoremap kjb <ESC>bi

" Cursor Movement
nnoremap <Leader>j 15j<C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e>
vnoremap <Leader>j 15j<C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e><C-e>
nnoremap <Leader>k 15k<C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>
vnoremap <Leader>k 15k<C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>

" bring page up or down
nnoremap <Leader>l zt23j
vnoremap <Leader>l zt23j
nnoremap <Leader>; zb23k
vnoremap <Leader>; zb23k

" highligtht word
inoremap jkd <ESC>viw
inoremap kjd <ESC>ciw
nnoremap <Leader>d viw
vnoremap <Leader>d viw

" Highlight Line
inoremap jki <esc>^v$h
inoremap kji <esc>^v$hc
nnoremap <leader>i ^v$h
vnoremap <leader>i v^v$h

" Inserting lines
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>
inoremap kjo <ESC>o
inoremap kjO <ESC>O
inoremap jkO <ESC>O<ESC>
inoremap jko <ESC>o<ESC>

" paste
inoremap kjp <ESC>]pa
inoremap kjP <ESC>]pA
inoremap jkp <ESC>]pa<ESC>
inoremap jkP <ESC>]pa<ESC>

" End of line
inoremap jk$ <ESC>$

"Beginning of Line
inoremap jk^ <ESC>^

"Select all
nnoremap <Leader>a ggVG
vnoremap <Leader>a vggVG

" Indentation
nnoremap <Leader>= 20==
inoremap kj= <ESC>==A
inoremap jk= <ESC>==

" Buffers
nnoremap <Leader>, :bn<Enter>
nnoremap <Leader>m :bp<Enter>
nnoremap <Leader>w :bd<Enter>
nnoremap <Leader><Tab> :e#<CR>
inoremap jk<Tab> <ESC>:e#<CR>
nnoremap <Leader>bn :buffers<CR>:buffer<Space>

":e (edit all) which refreshes changed files
nnoremap <Leader>e :bufdo e<Enter>

" switch to grave register
nnoremap <leader>' "_
vnoremap <leader>' "_

"r commands
"run scripts
nnoremap <Leader>rnode :!rnode %<Enter>
vnoremap <Leader>rn :!rnode %<Enter>
nnoremap <Leader>rp :!rpython %<Enter>
vnoremap <Leader>rp :!rpython %<Enter>
nnoremap <Leader>rt :!oet %<Enter>
vnoremap <Leader>rt :!oet %<Enter>
" set/unset numbers

" eslint
nnoremap <Leader>re :!eslint % --fix

" prettier
autocmd FileType javascript set formatprg=prettier-eslint\ --stdin

"open sublime
nnoremap <Leader>subl :w<Enter>:!/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ./ && clear<Enter>
