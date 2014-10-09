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
nnoremap <leader>hv :split $MYVIMRC<cr>
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
" execute "set colorcolumn=+" . join(range(1,200), ',+')
" set colorcolumn=80

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
" Git:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap ,gc :Gcommit<cr>
noremap ,ge :Gedit<cr>
noremap ,gs :Gstatus<cr>
noremap ,gw :Gwrite<cr>


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

nnoremap <leader>z zMzvzz

nnoremap <leader>ss :syntax sync fromstart<cr>

if !has('gui_running')
    set background=dark
    colorscheme kalhauge-term
    " colorscheme solarized 
endif

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extras:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <leader>t :split ~/.vim/todo.rst<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimentations: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <return> <c-]>

inoremap <C-s> <ESC>:w<CR>a
noremap  <C-s> :w<CR>
inoremap <ESC> <NOP>

vnoremap <C-c> "+y
vnoremap <C-a> "+p

