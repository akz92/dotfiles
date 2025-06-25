#!/bin/bash

echo 'Removing previous backups...'
echo
rm ~/.vimrc.bk

echo 'Creating new backup in ~/.vimrc.bk'
echo
mv ~/.vimrc ~/.vimrc.bk

echo 'Creating symlinks...'
echo
ln -s ~/dotfiles/vimrc ~/.vimrc
