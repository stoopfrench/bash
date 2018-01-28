
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias cp='cp -iv'
alias mv='mv -iv'

alias grep='grep -n'

# navigation
alias ..='cdl ../'                       
alias .2='cdl ../../'                       
alias .3='cdl ../../../'                    

# ls
alias ls='ls -p'
alias lsa='ls -a'
alias lsl='ls -l'

# git
alias gstat='git status'
alias gadd='git add -A'
alias gcom='git commit -m'
alias push='git push origin master'
alias pull='git pull origin master'
alias clone='git clone $1'
alias graph='git log --all --graph --decorate'
alias branch='git branch'

# common paths
alias 1='cdl ~'
alias opt='cd /opt && cd *'

# bash
alias reload='source /root/.bash_aliases'

function cdl {
	cd "$1"
	ls 
}

# Git branch in prompt.
parse_git_branch() { 
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n \W:\$(parse_git_branch) "










