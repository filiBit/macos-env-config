fpath=($ZDOTDIR $fpath)
autoload -Uz prompt_setup; prompt_setup

export PATH="$PATH:$HOME/nvim-macos-arm64/bin"
. "/Users/filipbiterski/.deno/env"
export PATH="$HOME/bin:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(/opt/homebrew/bin/brew shellenv)"
