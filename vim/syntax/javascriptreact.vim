" Add more react syntax for purify

 syn keyword jsxDeclarationOverwrite var const type 
 syn match   jsxBraces       "[{}\[\]]"
 syn match   jsxParens       "[()]"
 syn match   jsxOpSymbols    "=\{1,2}\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="
 syn match   jsxEndColons    "[,]"
 syn match   jsxLogicSymbols "\(&&\)\|\(||\)\|\(!\)"
