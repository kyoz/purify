" Add more c++ syntax for purify

syn keyword cppDeclarationOverwrite var const type 
syn match cppBraces       "[{}\[\]]"
syn match cppParens       "[()]"
syn match cppOpSymbols    "=\{1,2}\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="
syn match cppEndColons    "[,]"
syn match cppLogicSymbols "\(&&\)\|\(||\)\|\(!\)"

