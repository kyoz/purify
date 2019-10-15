" Add more react syntax for purify

syn keyword jsxDeclarationOverwrite var const type 
syn match   jsxBraces            "[{}\[\]]"
syn match   jsxParens            "[()]"
syn match   jsxOpSymbols         "=\{1,3}\|!==\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-=\|*=\|/=\|%="
syn match   jsxEndColons         "[,]"
syn match   jsxLogicSymbols      "\(&&\)\|\(||\)\|\(!\)"
syn keyword jsxCustomIdentifier  arguments var let const
syn keyword jsxCustomReserved    abstract boolean byte char class debugger double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile 
