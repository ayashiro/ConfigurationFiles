#!/bin/zsh


export EDITOR=emacs

#zsh basic settings


HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
autoload colors
autoload -Uz compinit
compinit -u
colors
zstyle ':completion:*:sudo:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
limit coredumpsize 102400

PROMPT="%{[34m%}%n%%%{[m%} "
RPROMPT="%{[31m%}[%/]%{[m%} "
PROMPT2="%{[32m%}%_%%%{[m%} "


alias mv="mv -i"
alias cp="cp -i"
alias vi="vim"
alias grep="egrep"
#for python
alias ocaml="rlwrap ocaml"
alias sftp="rlwrap sftp"


alias ls="ls --color"
alias emacs="emacs -nw"
export PATH=${PATH}:/usr/texbin
export PAGER="lv"
alias npm="npm -g"
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda
