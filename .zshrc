export PATH_TO_ZSH="$HOME/.oh-my-zsh"

plugins=(git)

ZSH_THEME="spaceship"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_PACKAGE_SHOW=(false)

source $PATH_TO_ZSH/oh-my-zsh.sh

function bob {
  node ~/bob/bob.js $1 $2
}

function str {
  yarn && yarn storybook
}

export PATH_TO_ZSHRC="$HOME/code/scripts/zshrc"

# set DISPLAY variable to the IP automatically assigned to WSL2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
 
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# pnpm
export PNPM_HOME="/home/cody/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
alias pp=pnpm
# pnpm end

alias python=python3