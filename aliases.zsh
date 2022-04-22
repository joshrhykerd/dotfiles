# Shortcuts
alias zshrc="code ${HOME}/.zshrc"
alias zshprofile="code ${HOME}/.zsh_profile"
alias path='echo -e ${PATH//:/\\n}'
alias {speed,speedtest}='networkQuality -v'

# Directories
alias dev="cd ${HOME}/dev"
alias dotfiles="cd ${DOTFILES}"
alias icloud="cd ${HOME}/Library/Mobile\ Documents/com~apple~CloudDocs"

# Fix `brew doctor` warnings caused by pyenv - this seems to break Fig
# alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
