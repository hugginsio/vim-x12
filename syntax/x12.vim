if exists("b:current_syntax")
    finish
endif

syntax match x12Identifier "\v^[^\*]+"
syntax match x12DocumentDelimiter "\v^(ISA)|(IEA)"
syntax match x12FieldDelimiter "\v\*"
syntax match x12SubfieldDelimiter "\v:"
syntax match x12RecordDelimiter "\v\~$"

highlight def link x12DocumentDelimiter Constant
highlight def link x12FieldDelimiter Delimiter
highlight def link x12Identifier Keyword
highlight def link x12RecordDelimiter Delimiter
highlight def link x12SubfieldDelimiter Delimiter

let b:current_syntax = "x12"
