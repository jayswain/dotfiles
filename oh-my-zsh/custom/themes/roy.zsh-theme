autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '🍦 '
zstyle ':vcs_info:*' unstagedstr '💩 '
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats ' [%b%c%u%B%F{238}]'
    } else {
        zstyle ':vcs_info:*' formats ' [%b💩 %B%F{238}]'
    }

    vcs_info
}

setopt prompt_subst
PROMPT='%F{208}λ%{$reset_color%} %B%F{white}%c%B%F{238}${vcs_info_msg_0_}%B%F{208} %{$reset_color%}% '

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd

