" Add more python syntax for purify

syn match pythonBraces       "[{}\[\]]"
syn match pythonParens       "[()]"
syn match pythonOpSymbols    "=\{1,3}\|!==\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-=\|*=\|/=\|%="
syn match pythonEndColons    "[;,]"
syn match pythonLogicSymbols "\(&&\)\|\(||\)\|\(!\)"

