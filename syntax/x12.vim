if exists("b:current_syntax")
    finish
endif

syntax match x12DocumentDelimiter '\v(ISA)|(IEA)' contained
syntax match x12Identifier '\v^[^\*]+' contains=x12DocumentDelimiter,x12ElementDelimiter
syntax match x12ElementMiddle '\v\*\zs.*\ze\*' contains=x12ElementNumeric,x12ElementAlphanumeric,x12ElementAlpha,x12ElementDelimiter
syntax match x12ElementEnd '\v\*\zs.*\ze\~' contains=x12ElementNumeric,x12ElementAlphanumeric,x12ElementAlpha,x12ElementDelimiter

syntax match x12ElementNumeric '\v[0-9|\.]*' contained
syntax match x12ElementAlpha '\v[a-zA-Z$&+,;=?@#|'<>.^()%!-]' contained
syntax match x12ElementAlphanumeric '\v(\d*[a-zA-Z$&+,;=?@#|'<>.^()%!-]\d*)+' contained

syntax match x12ElementDelimiter '\*' contained
syntax match x12SegmentDelimiter '\v\~'

highlight def link x12Identifier Label
highlight def link x12DocumentDelimiter Special
highlight def link x12ElementNumeric Number
highlight def link x12ElementAlphanumeric String
highlight def link x12ElementAlpha String
highlight def link x12ElementDelimiter Whitespace
highlight def link x12SegmentDelimiter Whitespace

let b:current_syntax = "x12"
