
function what_ruby {
    if which rvm-prompt &> /dev/null; then
        echo $(~/.rvm/bin/rvm-prompt i v)
    fi
}

function job_count {
    echo `jobs -l | wc -l`
}

function git_stuff {
    echo "$(git_prompt_info)"
}

PROMPT='$(git_prompt_info)%{$reset_color%} %{$fg[blue]%}$(what_ruby)%{$fg[magenta]%} %{$fg[yellow]%}%c
%{$fg[green]%}$(job_count) %{$fg[magenta]%}$%{$reset_color%} '

PROMPT='$(git_stuff) %{$fg[green]%}$(job_count) jobs%{$reset_color%} | %{$fg[blue]%}$(what_ruby)%{$reset_color%}
%{$fg[yellow]%}%~ %{$fg[magenta]%}$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_CLEAN="%{ $fg[green]%}✓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{ $fg[red]%}✘%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="$(git_prompt_short_sha) "
ZSH_THEME_GIT_PROMPT_SUFFIX=" |"
