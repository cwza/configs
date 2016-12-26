# pyenv settings
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
alias brew='"env" PATH=${PATH//$(pyenv root)\/shims:/} brew'

# nvm settings
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#direnv settings
eval "$(direnv hook bash)"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# directory alias through shell variable
blog=~/cwz/develop/hexo/hexo_blog
