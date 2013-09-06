#!/bin/bash
alias editalias='vim ~/.bash_aliases; source ~/.bash_aliases'
alias hej='echo "Hej!" > hej.txt'
alias ebrc='vim ~/.bashrc; source ~/.bashrc'
alias eba='vim ~/.bash_aliases;source ~/.bash_aliases'
alias ls='ls --color=auto -h'
alias ll='ls -l'
alias l='git log --pretty=oneline|tig'
alias gdiff='git diff|tig'
alias gcommit='git commit'
alias gpush='git push'
alias c='git commit'
alias p='git push'
alias bioclipsepp='git pull origin develop; git push origin develop;'
alias po='git push origin'
alias pom='git push origin master'
alias b='git branch'
alias sublime='/home/samuel/opt/sublime/sublime_text'
galaxy_uppmax() {
    ssh -L 8181:localhost:34598 kalkyl.uppmax.uu.se 'ssh -t -t -L 34598:localhost:8080 $1 "sh /home/samuel/opt/galaxy/run.sh"'
}
alias switchjava='sudo update-alternatives --config java'
topname() {
    top -p $(pgrep -d"," $1);
}
alias py='python'
alias ipy='ipython'
pd() { builtin pushd "$@">/dev/null; dirs -v; }
mkcd() {
    mkdir $1;
    cd $1;
}
alias aptg='sudo apt-get install'
alias apts='apt-cache search'
alias h='history'
alias dirs='dirs -v'
alias d='dirs'

## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
  
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
   
## Get server cpu info ##
alias cpuinfo='lscpu'

alias cdgtools='cd /home/samuel/opt/galaxy/tools'
alias pydev='screen -mS PyDev -c ~/.screenrc.pydev'

cythonize() {
    cython --embed $1.pyx
    gcc -I/usr/include/python2.7 -O3 -o $1 $1.c -lpython2.7
}

alias c='clear'
alias dirsizes='{ for f in `find -maxdepth 1 -type d`; do du -sh $f; done; }|sort -h'
alias goide='sh ~/opt/goide/bin/idea.sh &'
alias g='geany'
vs() {
    vim $1;
    source $1;
}
cl() {
    cd $1;
    pwd;
    ls;
}
alias ..='cl ..'
alias ....='cl ../..'
alias ......='cl ../../..'
alias .4='cl ../../../..'
alias .5='cl ../../../../..'
alias ea='vs ~/.bash_aliases'
alias pele='ssh samuell@pele.farmbio.uu.se'
alias node1='ssh rilnet@node1.rilnet.com'
alias kalkyl='ssh samuel@kalkyl.uppmax.uu.se'
alias cdgo='cd ~/code/go/src'
alias showterm='showterm -e bash'
alias edittheme_greybird='sudo vim /usr/share/themes/Greybird/gtk-2.0/gtkrc'
alias kb='setxkbmap'
alias kbus='setxkbmap us'
alias kbse='setxkbmap se'
