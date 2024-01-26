if exists("b:current_syntax")
    finish
endif

syntax match x12FieldDelimiter "\v\*"
syntax match x12Identifier "\v^[^\*]+"
syntax match x12RecordDelimiter "\v\~$"
syntax match x12SubfieldDelimiter "\v:"

highlight def link x12Identifier Keyword
highlight def link x12FieldDelimiter Delimiter
highlight def link x12SubfieldDelimiter Delimiter
highlight def link x12RecordDelimiter Delimiter

let b:current_syntax = "x12"
