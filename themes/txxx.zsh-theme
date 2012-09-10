function minutes_since_last_commit {
    now=`date +%s`
    last_commit=`git log --pretty=format:'%at' -1 2>/dev/null`
    if $lastcommit ; then
        seconds_since_last_commit=$((now-last_commit))
        minutes_since_last_commit=$((seconds_since_last_commit/60))
        echo $minutes_since_last_commit
    else
        echo "-1"
    fi
}

function what_ruby {
    if which rvm-prompt &> /dev/null; then
        echo $(~/.rvm/bin/rvm-prompt i v)
    fi
}

PROMPT='$(git_prompt_info) %{$reset_color%}%{$fg[magenta]%}[%{$fg[blue]%}$(what_ruby)%{$fg[magenta]%}] [%{$fg[yellow]%}%d%{$fg[magenta]%}] $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%} :("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} :)"
