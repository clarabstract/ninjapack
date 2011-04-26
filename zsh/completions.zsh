
# Fancy colored completion list

autoload -U compinit
compinit -i
zstyle ':completion:*' list-colors ''

# Visible select in the completions
zstyle ':completion:*:*:*:*:*' menu select

# Show verbose opt help
zstyle ':completion:*' verbose yes


# Extra hosts to complete
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
hosts=(
  "$_ssh_hosts[@]"
  "$_etc_hosts[@]"
  `hostname`
  localhost
)
zstyle ':completion:*:hosts' hosts $hosts

# ln doesn't know about completions by default :(
compdef _gnu_generic ln
