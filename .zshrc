export PATH_TO_ZSH="$HOME/.oh-my-zsh"

plugins=(git)

ZSH_THEME="spaceship"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_PACKAGE_SHOW=(false)

source $PATH_TO_ZSH/oh-my-zsh.sh

export PATH_TO_NVM="$HOME/.nvm"
[ -s "$PATH_TO_NVM/nvm.sh" ] && \. "$PATH_TO_NVM/nvm.sh" # This loads nvm
[ -s "$PATH_TO_NVM/bash_completion" ] && \. "$PATH_TO_NVM/bash_completion"  # This loads nvm bash_completion

function bob {
  node ~/code/scripts/bob/bob.js $1 $2
}

function str {
  yarn && yarn storybook
}

function gdev {
  git checkout -b origin/develop
}

export PATH_TO_ZSHRC="$HOME/Code/scripts/zshrc"

NPM_TOKEN=`cat ${PATH_TO_ZSHRC}/npm-token.txt`
[ -z "$NPM_TOKEN" ] && echo "npm-token.txt not set"
export NPM_TOKEN