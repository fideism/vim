#!/bin/bash
git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global credential.helper store
git config --global user.name nigno
git config --global user.mail nignog@126.com
git config --global user.email nignog@126.com


function completion(){
       cp ./git/git-completion.sh /etc/profile.d/git-completion.sh
       cp ./git/git-prompt.sh /etc/profile.d/git-prompt.sh
       cp ./git/git.sh /etc/profile.d/git.sh
}
completion
