" vim tips
" current file: %
"

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
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

call plug#end()

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
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

" Snippets (UltiSnips)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab>"

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

" NERDTREE
" Open NerdTree map menu
" Default key: m
" Refresh NerdTree map
" Default key: R
nnoremap <Leader>bb :NERDTreeToggle<Enter>

"Fuzzy search
nnoremap <Leader>p :CtrlP<CR>

":e (edit all) which refreshes changed files
nnoremap <Leader>e :bufdo e<Enter>

" switch to grave register
nnoremap <leader>' "_
vnoremap <leader>' "_

"r commands
"run scripts
nnoremap <Leader>rn :!rnode %<Enter>
vnoremap <Leader>rn :!rnode %<Enter>
nnoremap <Leader>rp :!rpython %<Enter>
vnoremap <Leader>rp :!rpython %<Enter>
nnoremap <Leader>rt :!oet %<Enter>
vnoremap <Leader>rt :!oet %<Enter>
" set/unset numbers
nnoremap <leader>rnu :set nu<cr>
nnoremap <leader>rno :set nonu<cr>
" eslint
nnoremap <Leader>re :!eslint % --fix

"open sublime
nnoremap <Leader>subl :w<Enter>:!/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ./ && clear<Enter>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" control p fuzzy search options
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
