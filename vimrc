"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" Editing:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildignore+=*/.git/*,*.class,*.pyc

" NERDTree

let NERDTreeIgnore=['__pycache__', '\.pyc$', '\.o$', '\.class$'] 

" Easy access to the vimrc file 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>hv :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>n  :NERDTree<cr>

" ControlP
nnoremap <leader>ph :CtrlP $HOME<cr>
nnoremap <leader>pd :CtrlP $HOME/Develop/<cr>
nnoremap <leader>pu :CtrlP $HOME/Work/UCLA<cr>
nnoremap <leader>pt :CtrlP $HOME/Work/DTU<cr>

" Enable moving of lines
nnoremap <M-j> ddjjp
nnoremap <M-k> ddk<S-p>

" Make spliting feel more naturaly
set smarttab
set smartindent

" Only use spaces, no tabs allowed
set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap <leader>rh yypVr

set nowrap
set textwidth=79
set formatoptions-=t
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
" noremap j gj
" noremap k gk

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

noremap <tab> %
noremap H ^
noremap L g_

" Fast stateshift
" ino jk <ESC>
" ino kj <ESC>

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
" Addons:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pandoc#syntax#conceal#use=0
"" let g:pandoc#syntax#conceal#blacklist=["subscript","superscript","image"]
let g:tex_conceal= 'adgm'

syn match texMathSymbol '\\land\>' contained conceal cchar=∧
syn match texMathSymbol '\\lor\>' contained conceal cchar=∨

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experimentations: 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
:nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>
noremap <return> <c-]>

inoremap <C-s> <ESC>:w<CR>a
noremap  <C-s> :w<CR>
" inoremap <ESC> <NOP>

vnoremap <C-c> "+y
noremap <C-a> "+p

cnoremap <C-a> <C-b>

fu! Danify()
    inoremap :: Æ
    inoremap ;; æ
    inoremap [[ å
    inoremap {{ Å
    inoremap '' ø
    inoremap "" Ø
endfunction

noremap <Leader>d  :call Danify()<CR>

autocmd BufEnter * match OverLength /\%81v.*/
autocmd BufEnter * let w:long_line_match = 1
 
fu! LongLineHighlightToggle()
  if exists('w:long_line_match') 
    match OverLength //
    unlet w:long_line_match
  else 
    match OverLength /\%81v.*/
    let w:long_line_match = 1
  endif
endfunction
noremap <Leader>l :call LongLineHighlightToggle()<CR>
 



let g:syntastic_always_populate_loc_list = 1
