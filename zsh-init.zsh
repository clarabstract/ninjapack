export NINJA_HOME=${NINJA_HOME:=$(cd $(dirname $0)/;pwd)}
export NINJA_ZSH="$NINJA_HOME/zsh"

export PATH="$PATH:$NINJA_HOME/bin"

setopt autocd

source $NINJA_ZSH/osx.zsh
source $NINJA_ZSH/keybindings.zsh
source $NINJA_ZSH/prompt.zsh
source $NINJA_ZSH/termwindow.zsh
source $NINJA_ZSH/history.zsh
source $NINJA_ZSH/completions.zsh
source $NINJA_ZSH/colors.zsh

