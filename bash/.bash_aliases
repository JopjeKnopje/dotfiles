alias c='clear'
alias x='exit'


# Git aliases
alias ga='git add'
alias gap='git add --patch'
alias gs='git status'
alias gc='git commit'
# Search for file
alias gsf='git log --all --full-history --stat -- '
alias gp='git push'
alias gco='git checkout'
alias gl='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
alias gla='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'


alias reload='source ~/.bash_aliases'
alias aliasg='alias | grep'


#apt
alias apti='sudo apt install'
alias aptu='sudo apt update'
alias aptuu='sudo apt update && sudo apt upgrade'
alias aptmh='sudo apt-mark hold'
alias aptms='sudo apt-mark showhold'
alias aptmu='sudo apt-mark unhold'
alias apts='apt-cache search'
alias aptss='apt list --installed | grep '
alias aptr='sudo apt remove'
alias aptrr='sudo apt purge'


# ls stuff
alias ls='ls --group-directories-first --color=auto'
alias lsd='ls -d .*'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# basic system commands
alias h='history | tail'
alias hg='history | grep'
alias mvi='mv -i'
alias rmi='rm -i'

# storage
alias df="df -h"
alias du="du -h"

alias nf='neofetch'


# SSH
alias sshtoaster='ssh -p 5000 joppe@home.ip'
alias sshvm='ssh -p 4242 jboeve@127.0.0.1'


# Programs
alias v='vim'
alias r='ranger'
alias xclip='xclip -selection c'
alias esptool='python3 -m esptool'


# Scripts
alias fixjtag='~/Scripts/fixjtag.sh'
alias webserver='python3 -m http.server'
alias fnear='~/Scripts/fnear.sh'
alias fnears='~/Scripts/fnears.sh'
# run local ssh server by starting/restarting sshd
alias sshserver='sudo systemctl start sshd && systemctl status sshd && echo "\033[34mPress any key to close (pls dont CTRL+C) \033[0m" && read && sudo systemctl stop sshd && systemctl status sshd'


# environment stuff
alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias get_pio='export PATH=$HOME/.platformio/penv/bin:$PATH'
function get_node()
{
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}


# show all of the history instead of just 10 entries
alias history='history 0'


# c development
alias valgrindl='valgrind --leak-check=full'
alias mr='make run'
alias mrt='make runt'
alias mrm='make runm'


# docker and kubernetes
alias d='docker'
alias dc='docker compose'
# alias k="minikube kubectl --"


# tmux stuff
alias dotfiles='tmux new-window -n dotfiles -c ~/dotfiles/ "nvim -S; `which $SHELL`"'


# tempdir
alias tmp='cd $(mktemp -d)'


GRC="$(which grc)"
if [ "$TERM" != dumb ] && [ -n "$GRC" ]; then
    alias colourify="$GRC -es --colour=auto"
    alias blkid='colourify blkid'
    alias configure='colourify ./configure'
    alias df='colourify df'
    alias diff='colourify diff'
    # alias docker='colourify docker'
    # alias docker-machine='colourify docker-machine'
    alias du='colourify du'
    alias env='colourify env'
    alias free='colourify free'
    alias fdisk='colourify fdisk'
    alias findmnt='colourify findmnt'
    # alias make='colourify make'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias id='colourify id'
    alias ip='colourify ip'
    alias iptables='colourify iptables'
    alias as='colourify as'
    alias gas='colourify gas'
    alias ld='colourify ld'
    alias lsof='colourify lsof'
    alias lsblk='colourify lsblk'
    alias lspci='colourify lspci'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias traceroute='colourify traceroute'
    alias traceroute6='colourify traceroute6'
    alias head='colourify head'
    alias tail='colourify tail'
    alias dig='colourify dig'
    alias mount='colourify mount'
    alias ps='colourify ps'
    alias mtr='colourify mtr'
    alias semanage='colourify semanage'
    alias getsebool='colourify getsebool'
    alias ifconfig='colourify ifconfig'
    # alias kubectl='colourify kubectl'
	# Using colourify breaks the autocomplete setup in .zshrc
	alias k="kubectl"
	# alias k="colourify minikube kubectl --"
fi


if [ -f $HOME/.bash_codam ]; then
	source $HOME/.bash_codam
fi
