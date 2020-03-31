# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# history
HISTSIZE=50

# common path
alias vimrc='vim ~/.vimrc.local'
alias bas='vim ~/.bashrc'

# instruction
alias c='clear'
alias date='date +"%A %Y-%m-%d"'

# project path && build
alias ll='ls -lha'
alias ..='cd ../ && ll'
alias ...='cd ../../ && ll'
alias ....='cd ../../../ && ll'
alias gita='git add .'
alias gitca='git commit --amend --no-edit'
alias gitpf='git push --force-with-lease'
alias gits='git status'

# rm
alias rm='$HOME/.rm.sh'
alias dl='/bin/rm'
alias trash='cd $HOME/.trash'
