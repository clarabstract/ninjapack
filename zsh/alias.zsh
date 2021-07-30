# Clear the screen of your clutter
alias c="clear"
alias cl="clear;ls;pwd"

# # Clear the screen of your clutter
alias c="clear"
alias cl="clear;ls;pwd"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cd..='cd ..'
alias jerbs='jobs'
alias woo='fortune'

eval $(thefuck --alias heck)

alias ll='ls -alh --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CFlh --color=auto'
alias l.='ls -d .* --color=auto'

# I forget what this magic does
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
        hosts=(
                  "$_ssh_hosts[@]"
                    "$_etc_hosts[@]"
                      `hostname`
                        localhost
                )
                zstyle ':completion:*:hosts' hosts $hosts

# docker docker docker
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"
dsa() { docker stop $(docker ps -a -q); }
dri() { docker rmi $(docker images -q); }
