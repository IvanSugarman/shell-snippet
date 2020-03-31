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
alias pro='vim ~/proxy.conf'
alias ngi='cd ~/openresty-staging/site-enable/'
alias reload='$(cd ~/openresty-staging; ./load.sh -s reload)'

# instruction
alias c='clear'
alias date='date +"%A %Y-%m-%d"'

# project path && build
alias ll='ls -lha'
alias ngish='vi ~/openresty-staging/site-enable/shenghuo.conf'
alias buildsh='cd ~/browser-fe/shenghuo && ./build.sh test/'
alias gosh='cd ~/browser-fe/shenghuo'
alias gotest='cd ~/browser-fe/test/'
alias goc='cd ~/browser-fe/common/'
alias goshc='cd ~/browser-fe/shenghuo-common/'
alias goshp='cd ~/browser-fe/shenghuo-push/'
alias gocms='cd ~/browser-fe/shenghuo-cms/'
alias gorms='cd ~/browser-fe/shenghuo-rms/'
alias godoc='cd ~/browser-fe/shenghuo-doc/'
alias got='cd ~/browser-fe/shenghuo-task/'
alias gos='cd ~/browser-fe/siren/'
alias orange='cd ~/orange/'
alias md='cd ~/orange/orange/src/page/md'
alias ..='cd ../ && ll'
alias ...='cd ../../ && ll'
alias ....='cd ../../../ && ll'
alias mitmproxy='mitmproxy --set confdir=/home/fe/.mitmproxy --set upstream_cert=false --set console_mouse=false -k -p 12262'
alias gita='git add .'
alias gitca='git commit --amend --no-edit'
alias gitpf='git push --force-with-lease'
alias gits='git status'
alias switch='sh ~/myshell/switch.sh'
alias bale='sh ~/bale/bale.sh'
alias list='sh ~/bale/list.sh'
alias zipsel='zip -r ~/browser-fe/select.zip ~/browser-fe/select-goods-assist/'
alias mvsel='mv ~/browser-fe/select.zip ~/browser-fe/test/'
alias agsh='sh ~/myshell/agall.sh'

alias pool='cd ~/browser-fe/shenghuo-cms && ./build.sh test/pool'

# rm
alias rm='$HOME/.rm.sh'
alias dl='/bin/rm'
alias trash='cd $HOME/.trash'

export NVM_DIR="/home/jiangmengqi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
#     export TERM='xterm-256color'
#else
#    export TERM-'xterm-color'
#fi

[[ -s /home/jiangmengqi/.autojump/etc/profile.d/autojump.sh ]] && source /home/jiangmengqi/.autojump/etc/profile.d/autojump.sh
