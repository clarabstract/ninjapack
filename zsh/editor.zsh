if [[ -e "$HOME/bin/subl" ]]; then
	export EDITOR="$HOME/bin/subl -w"
elif [[ -e /usr/bin/ruby ]]; then
	export EDITOR="/usr/bin/mate2 -w"
elif [[ -e /usr/bin/ruby ]]; then
	export EDITOR="$NINJA_HOME/bin/rmate -w"
elif [[ -e /usr/bin/mate ]]; then
	export EDITOR="/usr/bin/mate -w"
elif [[ -e /usr/bin/nano ]]; then
	export EDITOR=/usr/bin/nano
else
	echo "Neither TextMate nor nano present, enjoy your VI."
fi
