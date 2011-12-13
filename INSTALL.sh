#!/bin/bash

BASEDIR=$(pwd)
echo "Linking dotfiles from $BASEDIR to home directory."
echo

for file in {aliases,bash_rc,functions,exports,gitattributes,gitconfig,gitignore,osx,vimrc,zshrc}; do
    ln -sv "$BASEDIR"/"$file" ~/."$file"
done
unset file