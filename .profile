# ~/.profile: executed by the command interpreter for login shells.
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
# 4 will not be read if 2 or 3 exists
#
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

