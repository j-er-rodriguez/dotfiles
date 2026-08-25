# PROMPT
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr   '+'

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats       ' %F{green}(%b)%f%F{yellow}%u%c%f'
zstyle ':vcs_info:git:*' actionformats ' %F{red}(%b)%f%F{yellow}%u%c%f'
precmd() {
    vcs_info
    # Check for untracked files
    if [[ -n $(git ls-files --others --exclude-standard 2>/dev/null) ]]; then
        vcs_info_msg_0_="${vcs_info_msg_0_}%F{red}!%f"
    fi
}
setopt PROMPT_SUBST

PROMPT='%F{cyan}%1~%f${vcs_info_msg_0_} > '
 

# PATH
eval "$(zoxide init zsh)"
export PATH="$PATH:$(go env GOPATH)/bin"
# Created by `pipx` on 2026-08-18 21:15:17
export PATH="$PATH:/Users/jerodriguez@arizona.edu/.local/bin"
export PATH="$PATH:/Users/jerodriguez@arizona.edu/Documents/Personal/code/binaries"
 

 # ALIASES
 alias lg='lazygit'
