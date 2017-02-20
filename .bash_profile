# Set SHELL to Bash
SHELL=/bin/bash
#
# Dotfile sequence on startup
#
#When the shell is opened, this is the order in which the files are polled:
#
# 1. /etc/profile
# 2. ~/.bash_profile
# 3. ~/.bash_login
# 4. ~/.profile
#
# Configure PATH
# While you can put this all in one line, setting these up 
# individually allows you to comment out any individual
# setting for troubleshooting purposes
export PATH=$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.st-bin:$PATH

# read .bashrc when starting tmux
. ~/.bashrc
