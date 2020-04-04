" Add more c syntax for purify

syn keyword cDeclarationOverwrite var const type 
syn match cBraces       "[{}\[\]]"
syn match cParens       "[()]"
syn match cOpSymbols    "=\{1,2}\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="
syn match cEndColons    "[,]"
syn match cLogicSymbols "\(&&\)\|\(||\)\|\(!\)"
