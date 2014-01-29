
if version < 600
	syntax clear
elseif exists("b:current_syntax")
finish
endif

syn match ysComment ';;.*'

"syn match ysType '\w+'
"
"syn match ysDefDel 	'::' 	nextgroup=ysType
"syn match ysDef		'\w+' 	nextgroup=ysDefDel
"
"syn keyword ysKeyword define assert assert+ max-sat

setlocal iskeyword=33,36-38,42,43,45-47,48-57,60-64,@,91-94,_,123-126

syn match ysType /\w+/ contained
syn match ysTypeDef /::\w+/ contained contains=ysType
syn match ysTypeDefTop /\w+::\w+/ contained contains=ysVariable,ysTypeDef

syn match ysVariable /\w+/ contained
syn region ysFunctionCall start='(' end=')' contains=ysFunction, ysTypeDefTop
syn keyword ysFunction > < = => and or forall exist contained
syn keyword ysFunction define define-type max-sat assert assert+ contained
syn keyword ysFunction include contained




let b:current_syntax = "yices"

hi def link ysComment 	Comment
hi def link ysFunction  Function
hi def link ysVariable  Identifier
hi def link ysType  	Type

" hi def link ysKeyword 	Keyword
" hi def link ysType 	Type
