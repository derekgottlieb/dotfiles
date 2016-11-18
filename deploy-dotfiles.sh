#!/bin/bash

if [[ ! -d ~/.dotfiles ]]; then
  echo "ERROR: Please clone dotfiles repo to ~/.dotfiles (or create a symlink)"
  exit
fi

FILES_TO_SYMLINK=".bashrc 
.bash_profile 
.profile
.gitignore_global 
.hgignore_global 
.screenrc
.tm_properties
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

[[ ! -d ~/.liquidprompt ]] && git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
cd ~/.liquidprompt && git pull
ln -fs ~/.dotfiles/liquidpromptrc ~/.config/liquidpromptrc

[[ ! -d ~/.z.git ]] && git clone https://github.com/rupa/z.git ~/.z.git
cd ~/.z.git && git pull

