alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
# pyenv settings
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
alias brew='"env" PATH=${PATH//$(pyenv root)\/shims:/} brew'

# nvm settings
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#direnv settings
eval "$(direnv hook bash)"
