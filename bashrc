PATH="$HOME/projects/frostyplanet/scripts/:$PATH"
export PATH


if [ -f ~/.bash_profile ] ; then
  . ~/.bash_profile
fi

#eval "`dircolors -b`"
alias ls='ls --color=auto'

color_prompt="yes"

if [ "$color_prompt" = yes ]; then
  PS1='\[\033[01;34m\][\[\033[00m\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w]\[\033[00m\] '
else
  PS1="[ ${debian_chroot:+($debian_chroot)}\u: \w ]\\$ "
  PS2="&gt; "
fi
