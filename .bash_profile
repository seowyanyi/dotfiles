export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\[\033[00m\]$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export WORKON_HOME=~/Envs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ls='ls -GFh'
alias gb="git for-each-ref --format='%(authordate) %(authorname) %09 %(refname)' --sort=authordate | grep -i seow | grep refs/heads"
alias gl="git log --pretty=format:'%h %Cgreen %<(15) %ar %Creset %<(25) %an  %Cred %s'"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
