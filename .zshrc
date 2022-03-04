export ZSH="/Users/cody/.oh-my-zsh"

ZSH_THEME="spaceship"

ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

SPACESHIP_GIT_PREFIX=""
SPACESHIP_PACKAGE_SHOW=(false)

function bob {
  node ~/code/scripts/bob/bob.js $1 $2
}

function str {
  yarn && yarn storybook
}

function gdev {
  git checkout -b origin/develop
}

npmToken=$(<npm-token.txt)
[ -z "$npmToken" ] && echo "npm-token.txt not set"
export NPM_TOKEN="$npmToken"
