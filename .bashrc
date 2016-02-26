# ~/.bashrc
#
# Dotfile sequence on startup
#
# When the shell is opened, files are polled in this order:
#
# 1. /etc/profile
# 2. ~/.bash_profile
# 3. ~/.bash_login
# 4. ~/.profile
#
# set terminal prompt color
PS1="\[\033[0;36m\]\u@\h \w$\[\033[0m\] "

# set history to ignore duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=1500

# Aliases
alias "ls=ls --color=auto"
alias vi='vim'
alias tmux="TERM=screen-256color-bce tmux"
alias grep="/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

# Options
set -o vi # enables vim-like editing on the command line
#export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green 

# Editor
export EDITOR='vim'
export VISUAL='vim'

# set tmux to 256-color terminal
[ -z "$TMUX"] && export TERM=xterm-256color
