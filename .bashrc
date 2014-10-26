export PS1="\A \[\033[0;32m\]\u\[\033[0m\]@\[\033[0;37m\]\h\[\033[0m\] \W:\j$ "

export PATH=$HOME/bin:$PATH:/usr/local/sbin
export EDITOR=vim

if [[ -d $HOME/.rvm ]]; then
  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

for e in $HOME/.bash_profile.*
do
  [[ -s "$e" ]] && source "$e"
done

