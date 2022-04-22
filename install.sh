#!/usr/bin/env bash

echo "Setting up your Mac..."

export DOTFILES="${HOME}/.dotfiles"

# Check for Homebrew and install if we don't have it
if ! [ -x "$(command -v brew)" ]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # If we are on an M1 mac
    if [ "$(uname -m)" == 'arm64' ]; then
        # Put our newly insalled Homebrew in the PATH
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        # Remove unecessary Homebrew path setting from .zprofile
        sed -i '' '/Homebrew*/,+2d' "${DOTFILES}/.zprofile"
    fi
fi

# Use Homebrew to install all our dependencies (See Brewfile)
brew bundle --verbose --file "${DOTFILES}/Brewfile"

# pyenv install 3.9.11
# pyenv global 3.9.11

# Symlink core dotfiles to home directory
ln -sf "${DOTFILES}/.zprofile" "${HOME}/.zprofile"
ln -sf "${DOTFILES}/.zshrc" "${HOME}/.zshrc"

# Symlink the Mackup config to home directory
ln -sf "${DOTFILES}/.mackup.cfg" "${HOME}/.mackup.cfg"

mackup restore --force

exec zsh
