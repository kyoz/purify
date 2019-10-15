" Add more ruby syntax for purify

syn match rubyBraces       "[{}\[\]]"
syn match rubyParens       "[()]"
syn match rubyOpSymbols    "=\{1,3}\|!=\|<\|>\|>=\|<=\|<=>\|++\|+=\|--\|-=\|*=\|/=\|%="
syn match rubyEndColons    "[;,]"
syn match rubyLogicSymbols "\(&&\)\|\(||\)\|\(!\)"
