# Derek's dotfiles

Set up symlinks and install vim plugins:
```
git clone https://github.com/derekgottlieb/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./deploy-dotfiles.sh
./vim-plugins.sh
```

When on a Mac, run the following to install apps:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
```
