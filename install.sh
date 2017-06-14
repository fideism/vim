#!/bin/bash
### current dir ###
BASEDIR=$(cd $(dirname $BASH_SOURCE);pwd)

### bundle dir ###
BUNDLEDIR=~/.vim/bundle

######## printf message ##############
function echoMessage(){
        echo -e "\033[47;32m $* \033[0m"
}

######## backup vim configurations ##############
function backupVim(){
        echoMessage "back exists vim configuratioins"
        dayTime=`date +%Y%m%d_%s`
        backupDir=$HOME/backup/$dayTime
        if [[ ! -d $backupDir ]]; then
                mkdir -p $backupDir
        fi

        vimrc=~/.vimrc
        if [ ! -f $vimrc  ]; then
                cp -P $vimrc $backupDir
        fi

        vimdir=~/.vim
        if [ ! -d $vimdir  ]; then
                cp -R $vimdir $backupDir
        fi

        bashProfile=~/.bash_profile
        if [ ! -f $bashProfile  ]; then
                cp -P $bashProfile $backupDir
        fi

        bashrc=~/.bashrc
        if [ ! -f $bashrc  ]; then
                cp -P $bashrc $backupDir
        fi

        echoMessage "已将文件备份至$backupDir" 
}
backupVim

######## make vim/bundle dir ##############
function makeBundleDir(){
        echoMessage "make vim/bundle dir"
        if [ ! -d $BUNDLEDIR  ]; then
                mkdir -p $BUNDLEDIR
        else
                rm -rf $BUNDLEDIR
        fi
}
makeBundleDir


######## exce git clone ##############
function execGit(){
        echoMessage "exce git clone"
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}
execGit

########### install bundle ###############
function installBundle(){
        echoMessage "install bundle"
        cat $BASEDIR/_vimrc_head > ~/.vimrc
        vim +BundleInstall +BundleClean! +qall
}
installBundle

################ complate vimrc #####################
function complateVimrc(){
        cat $BASEDIR/_vimrc_head > ~/.vimrc
        cat $BASEDIR/_vimrc_content >> ~/.vimrc
}
complateVimrc
