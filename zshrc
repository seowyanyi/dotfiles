# Created by newuser for 5.0.2
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -v

autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
prompt fade
export TZ=Singapore

