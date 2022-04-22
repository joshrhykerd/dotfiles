# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

# Path to dotfiles
export DOTFILES=$HOME/.dotfiles

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Antigen
source "$(brew --prefix)/share/antigen/antigen.zsh"

# Load Antigen configuration
antigen init "${DOTFILES}/.antigenrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load all custom configurations
for config_file ("$DOTFILES"/*.zsh(N)); do
  source "$config_file"
done
unset config_file

# Install `pyenv` autocompletion
# eval "$(pyenv init -)"

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
