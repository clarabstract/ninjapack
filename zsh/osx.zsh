if [[ $OSTYPE == darwin* ]]; then
	if [[ -n $DISPLAY ]]; then
		# Fix DISPLAY
		export DISPLAY="0:0"
	fi
fi