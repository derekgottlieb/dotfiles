#!/bin/bash

function safe_symlink() {
  if [[ -z "$1" ]]; then
    echo "Usage: safe_symlink sourcefile [destfile]"
    exit 1
  fi
  sourcefile="$1"

  if [[ -z "$2" ]]; then
    destfile="$1"
  else
    destfile="$2"
  fi

  if [[ -e ~/$destfile ]]; then
    if [[ ! -L ~/$destfile ]]; then
      echo "~/$destfile exists and isn't a symlink. Skipping!"
    else
      echo "~/$destfile exists and is a symlink. Skipping!"
    fi
    return 0
  fi
  echo "Linking ~/$destfile to ~/.dotfiles/$sourcefile"
  ln -s ~/.dotfiles/$sourcefile ~/$destfile
  return 0
}

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
.vimrc
.zshrc"

for thisfile in $FILES_TO_SYMLINK
do
  safe_symlink $thisfile
done

safe_symlink gitconfig-global .gitconfig

# Oh my zsh
[[ ! -d ~/.oh-my-zsh ]] && git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cd ~/.oh-my-zsh && git pull

# Liquidprompt
[[ ! -d ~/.liquidprompt ]] && git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
cd ~/.liquidprompt && git pull
ln -fs ~/.dotfiles/liquidpromptrc ~/.config/liquidpromptrc

# Z - jump around to frequently accessed directories easily
[[ ! -d ~/.z.git ]] && git clone https://github.com/rupa/z.git ~/.z.git
cd ~/.z.git && git pull
