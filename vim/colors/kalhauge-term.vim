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


" Setup colors

let s:no             = ['NONE', 'NONE', 'NONE']
let s:black = [ '0 ', 'Black'  ]
let s:darkblue = [ '1 ', 'DarkBlue'  ]
let s:darkgreen = [ '2 ', 'DarkGreen' ]
let s:darkcyan = [ '3 ', 'DarkCyan' ]
let s:darkred = [ '4 ', 'DarkRed' ]
let s:darkmagenta = [ '5 ', 'DarkMagenta' ]
let s:brown = [ '6 ', 'Brown' ]
let s:lightgray = [ '7 ', 'LightGray' ]
let s:darkgray = [ '8 ', 'DarkGray' ]
let s:blue = [ '9 ', 'Blue' ]
let s:green = [ '10', 'Green' ]
let s:cyan = [ '11', 'Cyan' ]
let s:red = [ '12', 'Red' ]
let s:magenta = [ '13', 'Magenta' ]
let s:yellow = [ '14', 'Yellow' ]
let s:white = [ '15', 'White' ]

" let s:light_black    = ('#000000', 'black'  , '0')
" let s:light_white    = ('#000000', 'white'  , '1')
" let s:light_green    = ('#000000', 'green'  , '2')
" let s:light_yellow   = ('#000000', 'yellow' , '3')
" let s:light_red      = ('#000000', 'red'    , '4')
" let s:light_cyan     = ('#000000', 'cyan'   , '5')
" let s:light_megenta  = ('#000000', 'magenta', '6')

" Setup diffent tags

function! KHL(tag, fg, bg)
   exec 'hi '.a:tag.' ctermfg='.a:fg[0].' ctermbg='.a:bg[0]
endfunction

command! -nargs=+ Khi call KHL(<args>)

Khi 'Normal',      s:white, s:no
Khi 'Cursor',      s:lightgray, s:darkgray
Khi 'CursorLine',  s:no, s:darkgray
Khi 'LineNr',      s:black, s:darkgray

Khi 'VertSplit',      s:lightgray, s:darkgray
Khi 'StatusLine',     s:lightgray, s:darkgray
Khi 'StatusLineNC',   s:black, s:darkgray

Khi 'Search',         s:darkgray,           s:darkgreen
Khi 'Visual',         s:no,           s:darkgray

Khi 'OverLength',     s:darkred,           s:no

Khi 'MatchParen',     s:red,          s:no 
Khi 'Folded',         s:darkmagenta,       s:no

Khi 'ColorColumn', s:no, s:darkgray

Khi "Comment",  s:yellow,  s:no 
Khi "String",  s:green,  s:no 

Khi "Function", s:brown, s:no
Khi "Type", s:darkblue, s:no
Khi "Indentifier", s:blue, s:no

Khi "Statement", s:yellow, s:no
