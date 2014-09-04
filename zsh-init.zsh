export NINJA_HOME=${NINJA_HOME:=$(cd $(dirname $0)/;pwd)}
export NINJA_ZSH="$NINJA_HOME/zsh"

export PATH="$PATH:$NINJA_HOME/bin"

export GIT_MERGE_AUTOEDIT="no"

setopt autocd

autoload -U zed

source $NINJA_ZSH/osx.zsh
source $NINJA_ZSH/keybindings.zsh
source $NINJA_ZSH/prompt.zsh
source $NINJA_ZSH/termwindow.zsh
source $NINJA_ZSH/history.zsh
source $NINJA_ZSH/completions.zsh
source $NINJA_ZSH/colors.zsh
source $NINJA_ZSH/editor.zsh

# Deal with square bracket args:
alias rake="noglob rake"
alias cap="noglob cap"
