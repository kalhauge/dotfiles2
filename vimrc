""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  VIMrc                                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Christian Kalhauge
" Email: <chrstian@kalhauge.dk>
" Version: 0.1   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader = ","

" Disable irriating features
set nocompatible
set noautochdir
set noerrorbells

" Disable backup and swapfiles
set nobackup
set nowritebackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set scrolloff=7

" Treat long lines as break lines
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Fast stateshift
ino jk <ESC>
ino kj <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number  	                    	" Setup linenumbers
set cursorline
set nolist
set ruler
set showcmd
set hlsearch

set showmatch

" Enable Statusline 
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

syn on

set background=dark
colorscheme solarized 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimentations: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap <ESC> <NOP>
