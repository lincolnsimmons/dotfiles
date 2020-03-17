# Lincoln's .bashrc

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH=/usr/local/go/bin:$PATH # Golang
export PATH=~/.cargo/bin:$PATH      # Rust (cargo)
export PATH=~/.local/bin:$PATH      # Python (pip)
export PATH=~/bin/:$PATH
export EDITOR=vim
export PAGER=less

# Silence the "zsh is now default shell" on OSX Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[1;30m\]\u@\h\[\e[0m\]:\[\e[1;32m\]\w\[\e[0m\]\$(git_branch) \$ "

# User specific aliases and functions

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -pFh'
    alias ll='ls --color=auto -lahF'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Workflow stuff
alias ssh='ssh -X'
alias svn='svnwrapper.sh'

alias e='vim'
alias ff='find -iname'

# Don't attempt to GUI prompt for passwords
unset SSH_ASKPASS
