
function what_ruby {
    if which rvm-prompt &> /dev/null; then
        echo $(~/.rvm/bin/rvm-prompt i v)
    fi
}

function job_count { echo `jobs -l | wc -l` }

RPROMPT='%{$fg[green]%}$(job_count) jobs%{$reset_color%} | %{$fg[blue]%}$(what_ruby)%{$reset_color%}'
PROMPT='$(git_prompt_info)%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[cyan]%}%m
%{$fg[yellow]%}%~ %{$fg[black]%}$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} +%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ×%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
