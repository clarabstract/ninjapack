# COLOR EVERYTHING!!!

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'