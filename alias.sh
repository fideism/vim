#!/bin/bash
function appendAlias(){
        bashrc=~/.bashrc
        echo "" >> $bashrc
        echo "alias l='ls -CF'" >> $bashrc
        echo "alias la='ls -A'" >> $bashrc
        echo "alias ll='ls -alF'" >> $bashrc
        echo "alias ls='ls --color=auto'" >> $bashrc
        echo "alias rm='rm -i'" >> $bashrc
        echo "alias cd='cdls(){ cd \$1; ls; };cdls'" >> $bashrc
        source $bashrc
}
appendAlias
