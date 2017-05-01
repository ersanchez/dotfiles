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
# 
# PS1 Notes:
# format: <Esc>[FORMATCODEm - note no closing bracket and follow-on m
# <Esc> equivalents include 
# * \e - Bash
# * \033 - ASCII expressed in octal 
# * \x1B - ASCII expressed in hexadecimal
#
# FORMATCODEs
#     see this site for summary of codes:
#     http://misc.flogisoft.com/bash/tip_colors_and_formatting
# You can add multiple FORMATCODES like this:
#    \e[FORMATCODE;FORMATCODE;FORMATCODEm  ...note that trailing "m"
# * [0m - removes formatting (set to defaults)
# * [1m - bold, [21m - reset bold
#
PS1="\[\e[30;42m\]\u@\h:\[\e[44m\]\w\[\e[0m\] $ "		
#
#[ "$PS1" ] || return 0	# only apply to interactive shell
#
#ORIG_PS1=$PS1
#PS1=''${user_color}'\u@'${host_color}'\h:'${path_color}'\w$\e[0m '

# set history to ignore duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=50
HISTFILESIZE=50

# Aliases
alias ls="ls --color=auto -F"
alias ll="ls -laFh"
alias ldir="ls -l | grep '^d'"
alias vi='vim'
#alias tmux="TERM=screen-256color-bce tmux"
alias grep="/bin/grep $GREP_OPTIONS"
alias tdbt="task sync; clear; task due.before:tomorrow"
alias tdtw="task sync; clear; task list +WEEK"
alias vpn="cd /home/ers/tmp && sudo openvpn --config i7-6700k.ovpn"
alias weather="curl wttr.in/06103"
unset GREP_OPTIONS

# Options
set -o vi # enables vim-like editing on the command line
#export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31' # green 

# Editor
export EDITOR='vim'
export VISUAL='vim'

# ssh-agent: start on boot and only allow one instance to run at a time
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi
