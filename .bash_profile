# bash prompt
export PS1="\A \[\033[0;32m\]\u\[\033[0m\]@\[\033[0;37m\]\h\[\033[0m\] \W:\j\$ "

export EDITOR=vim

# Fix for Mac keyboard map
export XKL_XMODMAP_DISABLE=1

for p in $HOME/.bash_profile.*
do
 source $p
done
