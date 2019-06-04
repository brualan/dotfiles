#!/bin/bash
rm $HOME/.bashrc
ln -s $(pwd)/bashrc $HOME/.bashrc

rm $HOME/.vimrc
ln -s $(pwd)/vimrc $HOME/.vimrc

rm $HOME/.tmux.conf
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf
