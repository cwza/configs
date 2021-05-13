# alias
alias "mydu"="du -hs .* *"
alias vim="nvim"
alias reset="tput reset"
export colab="/Users/cwz/gdrive/Colab_Codes"
export cses="/Users/cwz/cwz/competitive_programming/CSES"

# direnv
eval "$(direnv hook zsh)"

# prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cwz/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cwz/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cwz/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cwz/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda deactivate
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cwz/cwz/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cwz/cwz/bin/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/cwz/cwz/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cwz/cwz/bin/google-cloud-sdk/completion.zsh.inc'; fi

# For go
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$PATH:/Users/cwz/cwz/bin"

# PostgreSQL
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

# MongoDB
export PATH="$PATH:/Applications/MongoDB.app/Contents/Resources/Vendor/mongodb/bin"

# homebrew llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
alias lldb="/usr/bin/lldb"
