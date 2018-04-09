# alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias "mydu"="du -hs .* *"

# bin
export PATH=$PATH:$HOME/cwz/develop/bin

# nvm settings
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#direnv settings
eval "$(direnv hook zsh)"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# directory alias through shell variable
dev=~/cwz/develop 
go=~/cwz/develop/go/src/github.com/cwza
gdrive="/Users/cwz/Google 雲端硬碟"

# go settings
export GOPATH=~/cwz/develop/go
export PATH=$PATH:$GOPATH/bin

# pipenv
eval "$(pipenv --completion)"

