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

" Setup colors

let s:no          = ['NONE', 'NONE', 'NONE']

let s:black       = [ '0', 'Black'  ]
let s:darkred     = [ '1', 'DarkRed' ]
let s:darkgreen   = [ '2', 'DarkGreen' ]
let s:brown       = [ '3', 'Brown' ]
let s:darkblue    = [ '4', 'DarkBlue'  ]
let s:darkmagenta = [ '5', 'DarkMagenta' ]
let s:darkcyan    = [ '6', 'DarkCyan' ]
let s:lightgray   = [ '7 ', 'LightGray' ]

let s:darkgray    = [ '8', 'DarkGray' ]
let s:red         = [ '9', 'Red' ]
let s:green       = [ '10', 'Green' ]
let s:yellow      = [ '11', 'Yellow' ]
let s:blue        = [ '12', 'Blue' ]
let s:magenta     = [ '13', 'Magenta' ]
let s:cyan        = [ '14', 'Cyan' ]
let s:white       = [ '15', 'White' ]

" Setup diffent tags

function! KHL(tag, type, fg, bg)
    let s:x = 0
    exec 'hi '.a:tag.' cterm='.a:type.' ctermfg='.a:fg[s:x].' ctermbg='.a:bg[s:x]
endfunction

command! -nargs=+ Khi call KHL(<args>)

Khi 'Normal',         s:none, s:white, s:no
Khi 'Cursor',         s:none, s:lightgray, s:darkgray
Khi 'CursorLine',     s:none, s:no, s:darkgray
Khi 'LineNr',         s:none, s:black, s:darkgray

Khi 'VertSplit',      s:none, s:lightgray, s:darkgray
Khi 'StatusLine',     s:none, s:lightgray, s:darkgray
Khi 'StatusLineNC',   s:none, s:black, s:darkgray

Khi 'Search',         s:none, s:darkgray, s:darkgreen
Khi 'Visual',         s:none, s:no, s:darkgray

Khi 'OverLength',     s:none, s:darkred, s:no

Khi 'MatchParen',     s:none, s:red, s:no 
Khi 'Folded',         s:none, s:darkmagenta, s:no

Khi 'ColorColumn',    s:none, s:no, s:darkgray

Khi "Comment",        s:none, s:yellow, s:no 
Khi "String",         s:none, s:green, s:no 

Khi "Function",       s:none, s:yellow, s:no
Khi "Type",           s:bold, s:darkblue, s:no
Khi "Indentifier",    s:none, s:blue, s:no
Khi "Statement",      s:none, s:brown, s:no

Khi "Error",          s:none, s:no, s:darkred
Khi "Special",        s:bold, s:red, s:no

hi! link Number Type
hi! link Boolean Type
hi! link Todo Special 
hi! link File Special
hi! link Title Special
