function battery_charge {
    echo `~/bin/batcharge.py` 2>/dev/null
}
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}
if [ "$(whoami)" = "root" ]; then NCOLOR="red"; else NCOLOR="white"; fi

#PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
# PROMPT='%{$fg_bold[$NCOLOR]%}${PWD/#$HOME/~}%{$reset_color%} $(prompt_char) '


PROMPT='%{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}: '
#RPROMPT='$(battery_charge)'
RPROMPT='[%!]'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
