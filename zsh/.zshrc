export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="x"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

source $ZSH/oh-my-zsh.sh

