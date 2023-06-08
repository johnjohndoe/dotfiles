#!/bin/bash

BASEDIR=$(pwd)
echo "Linking dotfiles from $BASEDIR to home directory."
echo

for file in {aliases,android-aliases,bash_rc,functions,essentials,exports,environment,gitattributes,gitconfig,gitignore,osx,paths,vimrc,zshrc}; do
    ln -sv "$BASEDIR"/"$file" ~/."$file"
done
unset file