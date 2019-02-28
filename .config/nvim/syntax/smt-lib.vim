" Vim syntax file
" Language: SMT-LIB
" Maintainer: Roberto Vigo
" Latest Revision: 23 Jan 2012

if exists("b:current_syntax")
  finish
endif

" Keywords
setlocal iskeyword+=-
setlocal iskeyword+==
setlocal iskeyword+=>
setlocal iskeyword+=:
syn keyword basicLanguageKeywords assert check-sat get-proof get-model declare-sort define-sort declare-const declare-fun set-option forall :pattern exit 
syn keyword const false true
syn keyword operators and or not => = iff distinct
syn match comments ";.*$"


let b:current_syntax = "smt-lib"

hi def link basicLanguageKeywords   Statement
hi def link comments 	Comment
hi def link const	Constant
hi def link operators         Operator

