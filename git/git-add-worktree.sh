set -e

is_bare_repo() {
    [ -d ".bare" ] || [ -d "$(git rev-parse --show-toplevel)/../.bare" ]
}

get_bare_root() {
    if [ -d ".bare" ]; then
        echo "$PWD"
    else
        echo "$(git rev-parse --show-toplevel)/.."
    fi
}

if is_bare_repo; then
    BRANCH=$(git branch -a |rev |cut -d' ' -f1 |cut -d'/' -f1 | rev |sort -u |fzf)
    ROOT=$(get_bare_root)
    git worktree add "$ROOT/$BRANCH" "$BRANCH"
else
    echo "fatal: not a git bare repository"
fi
