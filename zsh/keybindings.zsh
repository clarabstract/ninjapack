
# Set default LANG if something fucked up and it wasn't set 
export LANG=${LANG:-en_CA.UTF-8}



bindkey "\e[3~" delete-char             # Del
bindkey "\e[1;5D" backward-word         # Ctrl + Left
bindkey "\e[OD" backward-word         
bindkey "\e[1;5C" forward-word          # Ctrl + Right
bindkey "\e[OC" forward-word          
bindkey "\e[3;5~" kill-word             # Ctrl + Backspace
bindkey "\e[Z" reverse-menu-complete    # Shift+Tab



# by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
# we take out the slash, period, angle brackets, dash here.
export WORDCHARS='*?_[]~=&;!#$%^(){}'