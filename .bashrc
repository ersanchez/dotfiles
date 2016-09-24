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
# -- TO DO --
# 1. determine $HOSTNAME
# 2. set color of PS1 based on $HOSTNAME (different color for diff server?)
#
# set terminal prompt color
PS1="\[\033[0;36m\]\u@\h \w$\[\033[0m\] "

# set history to ignore duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=250
HISTFILESIZE=250

# Aliases
alias "ls=ls --color=auto"
alias vi='vim'
alias tmux="TERM=screen-256color-bce tmux"
alias grep="/bin/grep $GREP_OPTIONS"
alias tdbt="task sync; clear; task due.before:tomorrow"
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

# startup SSH Agent on login
#if ! pgrep -u $USER ssh-agent > /dev/null; then
#    ssh-agent > ~/.ssh-agent-thing
#fi
#if [[ "$SSH_AGENT_PID" == "" ]]; then
#    eval $(<~/.ssh-agent-thing)
#fi
#ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'
