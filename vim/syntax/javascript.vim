" Add more syntax to make javascript sync with typescript in purify
" https://github.com/leafgarland/typescript-vim/blob/master/syntax/typescript.vim

syn clear javaScriptIdentifier
syn clear javaScriptReserved
syn match   javascriptEndColons    "[;,]"
syn match   javascriptLogicSymbols "\(&&\)\|\(||\)\|\(!\)"
syn match   javascriptOpSymbols    "=\{1,3}\|!==\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="
syn keyword javascriptLabel        case default async readonly
syn keyword javaScriptIdentifier   arguments var let const
syn keyword javaScriptReserved     abstract boolean byte char class debugger double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile 
syn keyword javaScriptThis         this
