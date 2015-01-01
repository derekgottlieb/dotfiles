#!/bin/bash

if [[ ! -d ~/.dotfiles ]]; then
  echo "ERROR: Please clone dotfiles repo to ~/.dotfiles (or create a symlink)"
  exit
fi

FILES_TO_SYMLINK=".bashrc 
.bash_profile 
.gitignore_global 
.hgignore_global 
.screenrc
.tmux.conf
.vimrc"

for thisfile in $FILES_TO_SYMLINK 
do
  if [[ -e ~/$thisfile ]]; then
    if [[ ! -L ~/$thisfile ]]; then
      echo "~/$thisfile exists and isn't a symlink. Skipping!"
    else
      echo "~/$thisfile exists and is a symlink. Skipping!"
    fi
    continue
  fi
  ln -s ~/.dotfiles/$thisfile ~/$thisfile
done