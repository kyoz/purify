# ==============================================================================
#  Purify theme for zsh
#  Author:     Kyoz
#  Repository: https://github.com/kyoz/purify/
#  License:    The MIT License (MIT)
#  Copyright:  Kyoz (banminkyoz@gmail.com)
# ==============================================================================

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
    local user_symbol='%{$FG[206]%}❯%{$reset_color%}'
fi

local current_dir='%{$terminfo[bold]$FG[075]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="
${current_dir}${git_branch}
${user_symbol} "
RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[123]%} ⇢  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[009]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[048]%}√%{$reset_color%}"
