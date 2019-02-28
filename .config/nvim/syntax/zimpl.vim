" Vim syntax file
" Language:	ZIMPL
" Maintainer:	Colin Benner <benner.colin@gmail.com
" Last Change:	2013 Aug 14
" Based on the kate syntax file created by Thomas Sejr Jensen
" (http://zimpl.zib.de/download/zimpl-kate.xml).


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" types
syn keyword zimplType       integer real binary

hi def link zimplType       Type

" keywords
syn keyword zimplDefs       set param var implicit default priority sos
syn keyword zimplCommands   do print check read forall minimize maximize subto defnumb defstrg defbool defset
syn keyword zimplFlow       if vif then else end
syn keyword zimplBuiltin    mod abs sgn floor ceil min with max sum prod card mod random ord length argmin argmax
syn keyword zimplBuiltin    powerset subsets indexset cross union inter in cross without symdiff as by to cross
syn keyword zimplBuiltin    and or sqrt log in exp substr ord proj infinity startval type1 type2 skip use fs match
syn keyword zimplBuiltin    comment vabs match

hi def link zimplDefs       Keyword 
hi def link zimplCommands   Statement
hi def link zimplFlow       Conditional
hi def link zimplBuiltin    Keyword

" comments
syn region zimplComment     start="#" end="$" contains=@Spell
hi def link zimplComment    Comment

" constants
syn match zimplInteger      "\<\d\+\>"
syn match zimplFloat        "\<\d\+\.\d*\([Ee][-+]\d\+\)\?\>"
syn match zimplFloat        "\<\.\d\+\([Ee][-+]\d\+\)\?\>"
syn match zimplFloat        "\<\d\+[Ee][-+]\d\+\>"
syn region zimplString      start=+"+ skip=+\\\\\|\\"+ end=+"+

hi link zimplInteger    Constant
hi link zimplFloat      Float
hi link zimplString     String

let b:current_syntax = "zimpl"
