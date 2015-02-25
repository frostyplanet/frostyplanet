# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z $TMUX ] && [ -n $SSH_TTY ] &&  $(type tmux>/dev/null 2>&1) ; then
	if (tmux list-session | grep -v attached); then
		echo reattach last session
		tmux attach   # c+b d   will detach and return into login shell
	else
		exec tmux
	fi
fi
