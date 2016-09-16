#!/bin/bash

echo " it will be backup your old config.
maybe the config isn't fit for you."

read -p "you want do that:yN" sure

if [ $sure != "y" ]; then
    exit 0;
fi

echo "Backing up existing vim config"
today=`date +%Y%m%d`
vim="${HOME}/.vim"
vimrc="${HOME}/.vimrc"
[ -e $vim ] && [ ! -L $vim ] && mv $vim $vim.$today
[ -e $vimrc ] && [ ! -L $vimrr ] && mv $vimrc $vimrc.$today


echo "setting config"
mkdir ${vim}
cp -Rf ${PWD}/* ${vim}
ln -s ${HOME}/.vimrc ${vim}/init.vim

echo "Installing plugins"

curl -fLo ${vim}/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -u init.vim +PlugInstall +qall
vim -u init.vim +UpdateRemotePlugins +qall

echo "done"

echo "notice: if you want use C-s or C-q in linux terminal,
you just add 'stty -ixon' to your .zshrc or .bashrc"
