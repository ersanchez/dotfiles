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
# -- TO DO --
# 1. determine $HOSTNAME
# 2. set color of PS1 based on $HOSTNAME (different color for diff server?)
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
PS1="\e[97;42m\u@\h:\e[44m\w\e[0m $ "		
#
#[ "$PS1" ] || return 0	# only apply to interactive shell
#
# Check whether on server or non-server
#
#path_color='\e[44m'
#user_color='\e[97;42m'
#case $(hostname -s) in
#i7-4790)
#	host_color='\e[97;42m'
#	;;
#n54l*)
#	host_color='\e[97;41m'
#	;;
#esac
#ORIG_PS1=$PS1
#PS1=''${user_color}'\u@'${host_color}'\h:'${path_color}'\w$\e[0m '
#unset prompt_color

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
