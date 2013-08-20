
function what_ruby {
    if which rvm-prompt &> /dev/null; then
        echo $(~/.rvm/bin/rvm-prompt i v)
    fi
}

RPROMPT='%{$fg[blue]%}$(what_ruby)%{$reset_color%}'
PROMPT='$(git_prompt_info)%{$fg[cyan]%}%n%{$fg[blue]%} at %{$fg[cyan]%}%m
%{$fg[magenta]%}%~ %{$reset_color%}$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} +%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ×%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
