if [[ -e /usr/bin/mate ]]; then
	export EDITOR=/usr/bin/mate
elif [[ -e /usr/bin/nano ]]; then
	export EDITOR=/usr/bin/nano
else
	echo "Neither TextMate nor nano present, enjoy your VI."
fi
