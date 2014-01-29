"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  VIMrc                                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Christian Kalhauge
" Email: <chrstian@kalhauge.dk>
" Version: 0.1   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General: {{{
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
" Editing: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Easy access to the vimrc file 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Enable moving of lines
nnoremap ‹ ddjjp
nnoremap ∆ ddk<S-p>

" Make spliting feel more naturaly
set smarttab
set smartindent

" Only use spaces, no tabs allowed
set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap <leader>rh yypVr

set tw=80
execute "set colorcolumn=+" . join(range(1,200), ',+')

set completeopt+=longest

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set gdefault
set ignorecase
set smartcase
set hlsearch
set incsearch

noremap <silent> <leader><space> :nohl<cr>:call clearmatches()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set scrolloff=7

" Treat long lines as break lines
noremap j gj
noremap k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
noremap <space> /\v
noremap <c-space> ?\v

" Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Make spliting feel more naturaly
set splitbelow
set splitright

noremap n nzzzv
noremap N Nzzzv

noremap H 0
noremap L $

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

set t_Co=256

set showmatch

" Enable Statusline 
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

syn on

set background=dark
colorscheme solarized 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extras:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimentations: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <return> <c-]>

inoremap <C-s> <ESC>:w<CR>a
noremap  <C-s> :w<CR>
inoremap <ESC> <NOP>


