if exists("b:current_syntax")
    finish
endif

syn include @CPP syntax/cpp.vim

syn keyword mapKeyword startsymbol symbol infotype source parameter nextgroup=mapSymbolType,mapSymbolToken
syn match mapSymbolType /\v\{.+\}/ contained
syn match mapSymbolToken /\v[0-9A-Za-z_]+/
syn keyword mapRulesKW rules
syn keyword mapTODO TODO TO-DO FIXME NOTE XXX

syn match mapReductionArrow /\v\=\>/
syn match mapReductionArm   /\v\|/

syn match mapOperator "\v\%"
syn match mapComment "\v//.+$" oneline contains=mapTODO
syn match mapIncludeBrac /\v\{.+\}/ contained

syn region mapIncludeRegion start=/\v(symbolcode_h|parsercode_h|symbolcode_cpp|parsercode_cpp)/ end=/\v$/ matchgroup=mapInclude contains=mapIncludeBrac
syn region mapSymbolDefineRegion start=/\v\%symbol[^c]/ end=/\v$/ matchgroup=mapSymbol contains=mapSymbolType

hi link mapKeyword            Keyword 
hi link mapInclude            Keyword 
hi link mapRulesKW            Conditional
hi link mapOperator           Operator
hi link mapComment            Comment
hi link mapTODO               Todo
hi link mapIncludeBrac        Macro
hi link mapIncludeRegion      Keyword
hi link mapSymbolDefineRegion String
hi link mapSymbolType         SpecialChar
hi link mapReductionArrow     String
hi link mapReductionArm       Number

let b:current_syntax = "maphoon"
