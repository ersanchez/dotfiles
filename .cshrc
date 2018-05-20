# .cshrc file for FreeBSD

umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/bin /usr/local/sbin $HOME/bin)

#setenv EDITOR vim

# prompt settings

if ($?prompt) then
  set prompt = "%N@%m:%~ %# "
  set promptchars = "%#"
endif
