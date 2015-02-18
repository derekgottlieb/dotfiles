# For interactive terminals, display tmux sessions if any found
if [[ $TERM != "dumb" ]]; then
  if [[ -x $(which tmux) ]]; then
    tmux list-sessions 2> /dev/null
  fi
fi
