# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


##### Bash History

# Append to history, don't overwrite
shopt -s histappend
# Don't include duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth
# Increase the length of bash history
export HISTFILESIZE=
export HISTSIZE=


##### Random

# Displace color in 'less' correctly
export LESS="-R"

# Check the window size after ecah command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Make less more friendly for non-text input files, less lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


##### Environment Variables
# Note - if curl doesn't work, you may need /opt/curl-7.58.0/... instead of just /opt/curl/

export LD_LIBRARY_PATH=/opt/curl/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/lib64/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/lib/lib:$LD_LIBRARY_PATH

# Uncomment the following line ify ou don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Python3 (custom compiled)
export PYCURL_SSL_LIBRARY = openssl
export PYHOME=/opt/python3.9
export PYTHONPATH=$PYHOME/lib:$PYTHONPATH
export LD_RUN_PATH=$PYHOME/lib:$LD_RUN_PATH
export LD_LIBRARY_PATH=$PYHOME/lib/:/usr/lib64/openssl11:/opt/libp11/lib:$LD_LIBRARY_PATH
export PATH=$PYHOME/bin:$PATH
# Uncomment the following line if you have the custom CSPID Python .so library
export PYTHONPATH=/home/cwmauk/Modules:$PYTHONPATH
export PYTHONDONTWRITEBYTECODE=anynonemptystring

# PostgreSQL
export POSTGRES_HOME=/usr/pgsql-13
export LD_RUN_PATH=$POSTGRES_HOME/lib:$LD_RUN_PATH
export LD_LIBRARY_PATH=$POSTGRES_HOME/lib:$LD_LIBRARY_PATH
export PATH=$POSTGRES_HOME/bin:$PATH

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

# Curl
export PATH=/opt/curl/bin:$PATH
export LD_RUN_PATH=/opt/curl/lib:$LD_RUN_PATH
export LD_LIBRARY_PATH=/opt/curl/lib:$LD_LIBRARY_PATH

export LD_RUN_PATH=/usr/local/lib:$LD_RUN_PATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH

export PATH=/opt/vim/bin:$PATH
export PATH=/opt/node/bin:$PATH
export PATH=/opt/git/bin:$PATH
export PATH=/opt/tmux/bin:$PATH

# User Specific
#export SSL_DIR=/home/cwmauk/.pki/nssdb
export SSL_CERT_FILE=/etc/pki/tls/certs/Apache_Bundle_AllTrustedPartners.crt


##### Aliases

alias ll='ls -l --color=auto --group-directories-first'
alias grep='grep -I --color=always'
alias historyreload="history -a; history -c; history -r"

# tmux
alias tmux='tmux -2'

# git
alias gc='git commit'
alias gs='git status'
alias ga='git add'
alias gb='git branch -a'
alias gd='git diff'
alias gr='git rm'

# typos
alias gerp='grep'
alias clera='clear'

# docker
alias ds='docker service'
alias di='docker image'
alias dsl='docker service ls'
alias dc='docker container'
alias dcl='docker container ls'

alias dlog='tail_docker'
alias dexec='connect_to_image'
alias dclear='clear_exited'
alias dreset='rm_container'
