export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"

plugins=(git)

ZSH_THEME="spaceship"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_PACKAGE_SHOW=(false)

source $ZSH/oh-my-zsh.sh

function bob {
  node ~/code/scripts/bob/bob.js $1 $2
}

function str {
  yarn && yarn storybook
}

function gdev {
  git checkout -b origin/develop
}

NPM_TOKEN=$(<npm-token.txt)
[ -z "$NPM_TOKEN" ] && echo "npm-token.txt not set"
export NPM_TOKEN
