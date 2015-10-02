# For interactive terminals, display tmux sessions if any found
if [[ $TERM != "dumb" ]]; then
  if [[ -x $(which tmux) ]]; then
    tmux list-sessions 2> /dev/null
  fi
fi

function tm {
  if [[ -z $1 ]]; then
    echo "Usage: tm session-name"
    return
  fi
  session_exists=$(tmux list-sessions | grep -c ^$1:)
  if [[ $session_exists -ne 0 ]]; then
    tmux attach -t $1
  else
    tmux new-session -s $1
  fi
}
