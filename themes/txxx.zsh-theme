
function what_ruby {
    if which rvm-prompt &> /dev/null; then
        echo $(~/.rvm/bin/rvm-prompt i v)
    fi
}

RPROMPT='%{$fg_bold[white]%}$(what_ruby)%{$reset_color%}'
PROMPT='$(git_prompt_info)%{$fg[cyan]%}%n%{$fg[blue]%}@%{$fg[cyan]%}%m
%{$fg_bold[black]%}%~ %{$fg[white]%}$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} +%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ×%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
