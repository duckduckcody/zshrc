export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh

ZSH_THEME="spaceship"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_PACKAGE_SHOW=(false)
plugins=(git)

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
