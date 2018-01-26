
# terminal

export CLICOLOR=1

export LSCOLORS=Cxfxexdxbxegedabagacad

PS1="\n \W:\$(parse_git_branch) "

# programs
alias subl="open -a '/Applications/Sublime Text.app'"
alias text="open -a '/Applications/TextEdit.app'"
alias gimp="open -a '/Applications/Gimp.app'"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#process
mkcd () { mkdir -pv "$1" && cd "$1"; }

alias cp='cp -iv'
alias mv='mv -iv'

alias f.='open -a FINDER ./' 

alias ls='ls -p'
alias grep='grep -n'

# navigation
alias ..='cdl ../'                          # Go up 1 directory
alias .2='cdl ../../'                       # Go up 2 directory
alias .3='cdl ../../../'                    # Go up 3 directory

# ls
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

#Node
alias nm='nodemon'

# http-server
alias serv='http-server'

# common paths
alias 1='cdl ~'
alias docs='cdl ~/Documents'
alias desk='cdl ~/Desktop'
alias dwn='cdl ~/Downloads'
alias trash='cdl ~/.Trash'

##File System
alias pro='cdl ~/Documents/Projects/'
alias notes='cdl ~/Documents/Coding_Notes_and_Resources'
alias sc='cdl ~/Documents/SCRIPTS'
alias tmp='cdl ~/Documents/TEMPLATES'
alias ccf='cdl ~/Documents/CodeCraft/'

# bash
alias .bash='subl ~/.bash_profile'
alias reload='source ~/.bash_profile'

function cdl {
	cd "$1"  
	ls
}

# Git branch in prompt.
parse_git_branch() { 
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PATH VARIABLES
PATH=$PATH:/Users/donaldallen/Documents/SCRIPTS











