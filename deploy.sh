#!/bin/bash
rm $HOME/.bashrc
ln -s $(pwd)/bashrc $HOME/.bashrc

rm $HOME/.profile
ln -s $(pwd)/profile $HOME/.profile

rm $HOME/.config/user-dirs.dirs
ln -s $(pwd)/user-dirs.dirs $HOME/.config/user-dirs.dirs

# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

rm $HOME/.vimrc
ln -s $(pwd)/vimrc $HOME/.vimrc
mkdir $HOME/.vim/colors
(cd $HOME/.vim/colors && curl -O https://raw.githubusercontent.com/jakwings/vim-colors/master/colors/moody.vim)

rm $HOME/.tmux.conf
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
