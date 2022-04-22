# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"

# Add Homebrew to PATH
eval $(/opt/homebrew/bin/brew shellenv)

# Add `pyenv` shims to PATH
eval "$(pyenv init --path)"

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"
