# ~/.bashrc

# set terminal prompt color
#PS1="\[\033[1;35m\]\u@\h \w$\[\033[0m\] "
#export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#PS1="\[$(tput bold)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\[$(tput sgr0)\]\[\033[38;5;39m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;6m\][\[$(tput sgr0)\]\[\033[38;5;14m\]\w\[$(tput sgr0)\]\[\033[38;5;6m\]]:\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#PS1="\[\033[0;36m\]\u@\h \w$\[\033[0m\] "
PS1="\[\033[0;34m\][\u@\h:\w]$\[\033[0m\]"


# set history to ignore duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=1500

# Aliases
alias "ls=ls --color=auto"
alias vi='vim'

# Options
set -o vi # enables vim-like editing on the command line
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green 

# Editor
export EDITOR='vim'
export VISUAL='vim'
