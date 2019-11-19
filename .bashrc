# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions


##### Bash History

# Append to history, don't overwrite
shopt -s histappend
# Don't include duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth
# Increase the length of bash history
export HISTFILESIZE=
export HISTSIZE=


##### Aliases

alias ls='ls -l --color --group-directories-first'

# git
alias g='git'
alias clone='git clone'
alias gc='git commit'
alias gs='git status'
alias ga='git add'
alias gb='git branch -a'
alias gd='git diff'

# typos
alias gerp='grep'
alias clera='clear'

# docker
alias d='docker'
alias ds='docker service'
alias di='docker image'
alias dsl='docker service ls'
alias dc='docker container'
alias dcl='docker container ls'

alias dlog='tail_docker'
alias dexec='connect_to_image'
alias dclear='clear_exited'
alias dreset='rm_container'

function tail_docker() {
    docker logs `/usr/bin/docker ps | grep $1 | tail -1 | awk '{print $NF}'` --follow
}

function connect_to_image() {
    docker exec -it `/usr/bin/docker ps | grep $1 | tail -1 | awk '{print $NF}'` /bin/sh
}

function clear_exited() {
    docker rm -f `docker ps -a | grep -e "Exit\|Create" | awk '{print $NF}'`
}

function rm_container() {
    docker rm -f `docker ps -a | grep $1 | awk '{print $NF}'`
}

