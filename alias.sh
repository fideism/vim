#!/bin/bash
function appendAlias(){
        bashrc=/home/hyc/vim/tets
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
        echo "export TERM=xterm" >> $bashrc
        echo "">>$bashrc
        echo "#show git branch">>$bashrc
        echo "function git_branch {" >> $bashrc
        echo "  branch=\"\`git branch 2>/dev/null | grep \"^\\*\" | sed -e \"s/^\\*\\ //\"\`\"" >> $bashrc
        echo "  if [ \"\${branch}\" != \"\"  ];then">>$bashrc
        echo "           if [ \"\${branch}\" = \"(no branch)\"  ];then">>$bashrc
        echo "                    branch=\"(\`git rev-parse --short HEAD\`...)\"">>$bashrc
        echo "            fi">>$bashrc
        echo "                    echo \" (\$branch)\"">>$bashrc
        echo "  fi">>$bashrc
        echo "}">>$bashrc
        echo "export PS1='\u@\h \[\033[01;36m\]\W\[\033[01;32m\]\$(git_branch)\[\033[00m\] \\$ '">>$bashrc
        source $bashrc
}
appendAlias
