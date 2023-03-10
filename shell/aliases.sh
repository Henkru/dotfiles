# NeoVim related
alias v='vim'
if command -v nvim &> /dev/null; then
    alias vim='nvim'
fi

# Git related
alias wa='git worktree-add'

# Tmux related
alias t='tmux-new-session'

# GPG
alias yc='gpg-connect-agent "scd serialno" "learn --force" /bye'
