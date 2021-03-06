" Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
"
" Name:        kalhauge-term.vim
" Maintainer:  Christian Kalhauge 
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "kalhauge-term"

" Setup terms

let s:italic     = 'italic'
let s:bold       = 'bold'
let s:none       = 'none'
let s:reverse    = 'reverse'

" Setup colors

let s:no          = ['NONE', 'NONE', 'NONE']

let s:black       = [ '0',  'Black',      '#242424']
let s:darkred     = [ '1',  'DarkRed',    '#C82D2D']
let s:darkgreen   = [ '2',  'DarkGreen',  '#87B047']
let s:brown       = [ '3',  'Brown',      '#FFBF53']
let s:darkblue    = [ '4',  'DarkBlue',   '#5984A0']
let s:darkmagenta = [ '5',  'DarkMagenta','#CC59B2']
let s:darkcyan    = [ '6',  'DarkCyan',   '#ACA9E2'] 
let s:lightgray   = [ '7',  'LightGray',  '#DAD5D2']

let s:darkgray    = [ '8',  'DarkGray',   '#2F2F2F']
let s:red         = [ '9',  'Red',        '#B9642A']
let s:green       = [ '10', 'Green',      '#519F50']
let s:yellow      = [ '11', 'Yellow',     '#BC9458']
let s:blue        = [ '12', 'Blue',       '#79ADD3']
let s:magenta     = [ '13', 'Magenta',    '#4F4F4F']
let s:cyan        = [ '14', 'Cyan',       '#D5D6FF']
let s:white       = [ '15', 'White',      '#FFFFFF']

" Setup diffent tags

function! KHL(tag, type, fg, bg)
    let s:x = 0
    exec 'hi '.a:tag.' cterm='.a:type.' ctermfg='.a:fg[s:x] . '
        \ ctermbg=' . a:bg[s:x] . ' guifg=' . a:fg[2] . ' guibg=' . a:bg[2] . '
        \ gui='.a:type
    
endfunction

command! -nargs=+ Khi call KHL(<args>)

Khi 'Normal',         s:none, s:lightgray, s:black
" Khi 'Cursor',         s:reverse, s:black,     s:lightgray
" Khi 'iCursor',        s:reverse, s:black,     s:brown
Khi 'CursorLine',     s:none, s:no,        s:darkgray
Khi 'LineNr',         s:none, s:magenta,  s:black

Khi 'VertSplit',      s:none, s:lightgray, s:darkgray
Khi 'StatusLine',     s:none, s:lightgray, s:darkgray
Khi 'StatusLineNC',   s:none, s:black,     s:darkgray

Khi 'Search',         s:none, s:darkgray,  s:darkgreen
Khi 'Visual',         s:none, s:no,        s:darkblue


Khi 'MatchParen',     s:none, s:red, s:no
Khi 'Folded',         s:none, s:darkmagenta, s:black

Khi 'ColorColumn',    s:none, s:no, s:darkgray

Khi "Comment",        s:none, s:yellow, s:no 
Khi "String",         s:none, s:darkgreen, s:no 


Khi "Constant",       s:none, s:darkcyan, s:no 
Khi "Function",       s:none, s:yellow, s:no
Khi "Type",           s:bold, s:darkblue, s:no
Khi "Indentifier",    s:none, s:blue, s:no
Khi "Statement",      s:none, s:brown, s:no

Khi "PreProc",        s:bold, s:darkred, s:no

Khi "Error",          s:none, s:darkred, s:no
Khi "Special",        s:bold, s:red, s:no

Khi "Conceal",        s:none, s:no, s:no

Khi "DiffAdd",        s:none, s:black, s:darkgreen
Khi "DiffChange",     s:none, s:black, s:yellow
Khi "DiffDelete",     s:none, s:black, s:darkred
Khi "DiffText",       s:none, s:black, s:white

Khi "diffAdded",      s:none, s:darkgreen, s:no
Khi "diffRemoved",    s:none, s:darkred, s:no
Khi "diffChanged",    s:none, s:brown, s:no

Khi "qfLineNr",       s:none, s:green, s:no

Khi "Pmenu",          s:none, s:blue, s:darkgray

hi! link Number Type
hi! link Boolean Type
hi! link Todo Special 
hi! link File Special
hi! link Title Special


hi OverLength ctermbg=8 guibg=#2F2F2F

