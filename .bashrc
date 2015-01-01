
# bash prompt
export PS1="\A \[\033[0;32m\]\u\[\033[0m\]@\[\033[0;37m\]\h\[\033[0m\] \W:\j\$ "

export PATH=$HOME/bin:$PATH

# Why any distro would default to something other than vim is beyond me
export EDITOR=vim

# Fix for Mac keyboard map
export XKL_XMODMAP_DISABLE=1

if [[ -d $HOME/.rvm ]]; then
  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

for p in $HOME/.bash_profile.*
do
  source "$p"
done
