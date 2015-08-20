# ~/.bashrc

# set terminal prompt color
#PS1="\[\033[1;35m\]\u@\h \w$\[\033[0m\] "
#export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#PS1="\[$(tput bold)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\[$(tput sgr0)\]\[\033[38;5;39m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;6m\]]:\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
PS1="\[\033[0;36m\]\u@\h \w$\[\033[0m\] "


# set history to ignore duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=1500
