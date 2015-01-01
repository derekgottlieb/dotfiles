
# bash prompt
export PS1="\A \[\033[0;32m\]\u\[\033[0m\]@\[\033[0;37m\]\h\[\033[0m\] \W:\j\$ "

export PATH=$HOME/bin:$PATH

# Why any distro would default to something other than vim is beyond me
export EDITOR=vim

# Fix for Mac keyboard map
export XKL_XMODMAP_DISABLE=1

for p in ~/.bashrc.* ~/.dotfiles/.bashrc.*
do
  source "$p"
done

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases