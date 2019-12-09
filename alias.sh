#!/bin/bash
function appendAlias(){
        bashrc=~/.bashrc
        echo "" >> $bashrc
        echo "#alias"
        echo "alias l='ls -CF'" >> $bashrc
        echo "alias la='ls -A'" >> $bashrc
        echo "alias ll='ls -alF'" >> $bashrc
        echo "alias ls='ls --color=auto'" >> $bashrc
        echo "alias rm='rm -i'" >> $bashrc
        echo "alias cd='cdls(){ cd \$1; ls; };cdls'" >> $bashrc
        echo "alias gam='gam(){ git add .;git commit -m \$1; };gam'">>$bashrc
        echo "alias gst='git status'">>$bashrc
        echo "alias gdiff='git diff .'">>$bashrc
        echo "alias composerupdate='composer update --profile'">>$bashrc
        echo "export TERM=xterm" >> $bashrc
        source $bashrc
}
appendAlias
