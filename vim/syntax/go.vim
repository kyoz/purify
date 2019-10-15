" Add more go syntax for purify

syn keyword goDeclarationOverwrite var const type 
syn match goBraces       "[{}\[\]]"
syn match goParens       "[()]"
syn match goOpSymbols    "=\{1,2}\|:=\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="
syn match goEndColons    "[,]"
syn match goLogicSymbols "\(&&\)\|\(||\)\|\(!\)"
