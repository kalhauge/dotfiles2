" Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
"
" Name:        kalhauge.vim
" Maintainer:  Christian Kalhauge 

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "kalhauge"


function! KHL(tag, guifg, guibg, gui)
   exec 'hi '.a:tag.' guifg='.a:guifg.' guibg='.a:guibg.' gui='.a:gui
endfunction

command! -nargs=+ Khi call KHL(<args>)

let s:bg0         = '#1A1A1A'
let s:bg01        = '#1F1F1F'
let s:bg1         = '#232323'
let s:bg2         = '#2C2C2C'
let s:bg3a        = '#333333'
let s:bg3         = '#434343'


let s:fg0         = '#E6E1DC'
let s:fg1         = '#D6D1CC'

let s:blue0       = '#6D9CBD'
let s:blue1       = '#BFBFEF'

let s:green0      = '#509E50'
let s:green0      = '#A5C160'

let s:tan         = '#FFC66D'
let s:brown       = '#BC9357'
let s:orange      = '#CC7733'

let s:purble      = '#9D5CBD'
let s:red         = '#DA4938'
let s:bgpurble    = '#302330'
let s:bgred       = '#332323'

let s:no  = 'NONE'
let s:it  = 'italic'

Khi 'Normal',         s:fg0,          s:bg1,         s:no
Khi 'Cursor',         s:bg2,          s:fg1,         s:no
Khi 'CursorLine',     s:no,           s:bg2,         s:no
Khi 'LineNr',         s:bg3,          s:bg2,         s:no
Khi 'FoldColumn',     s:bg0,          s:bg2,         s:no

Khi 'VertSplit',      s:bg3,          s:bg2,         s:no
Khi 'StatusLine',     s:bg1,          s:bg3,         s:no
Khi 'StatusLineNC',   s:bg1,          s:bg3a,        s:no
Khi 'Search',         s:no,           s:bg3,         s:no
Khi 'Visual',         s:no,           s:bg3,         s:no
Khi 'Folded',         s:bg0,          s:bg2,         s:no
Khi 'MatchParen',     s:red,          s:no,          s:no
Khi 'OverLength',     s:no,           s:bgred,       s:no

Khi 'NonText',        s:bg01,         s:bg01,        s:no
Khi 'ColorColumn',    s:red,          s:bg01,        s:no

hi! link Todo Special 
hi! link File Special
hi! link Title Special

Khi 'Comment',     s:brown,        s:no,          s:it
Khi 'Identifier',  s:blue1,        s:no,          s:no
Khi 'Type',        s:blue0,        s:no,          s:no

hi! link Number Type
hi! link Boolean Type

Khi 'Function',    s:tan,          s:no,          s:no

Khi 'Statement',   s:orange,       s:no,          s:no
Khi 'String',      s:green0,       s:no,          s:no

Khi 'PreProc',     s:orange,       s:no,          s:no

Khi 'SignColumn',  s:no,           s:bg2,         s:no

Khi 'SyntasticErrorSign', s:red, s:bg2, s:no
Khi 'SyntasticWarningSign',  s:purble, s:bg2, s:no

Khi 'SyntasticErrorLine', s:no, s:bgred, s:no
Khi 'SyntasticWarningLine',  s:no, s:bgpurble, s:no

Khi 'SyntasticStyleErrorLine', s:no, s:bgred, s:no
Khi 'SyntasticStyleWarningLine',  s:no, s:bgpurble, s:no

hi! link Error SyntasticStyleErrorLine

" Popup Menu
Khi 'Pmenu', s:fg0, s:bg3, s:no 
Khi 'PmenuSbar', s:no, s:red, s:no
Khi 'PmenuSel', s:no, s:red, s:no
Khi 'PmenuThumb', s:no, s:red, s:no

match OverLength /\%82v.*/
