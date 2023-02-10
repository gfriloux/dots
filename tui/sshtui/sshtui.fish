function sshtui
  set HOST $(grep -R -e "^Host " ~/.ssh/config.d/ | awk '{print $2}' | fzf --height=40% --layout=reverse --info=inline --border --margin=1 --padding=1 --preview="awk '/{}/' RS= ~/.ssh/config.d/* | bat -l ssh_config --color=always --style=grid --line-range :300")
  if test -z "$HOST"
    return
  end

  echo "SSH session started, connecting to $HOST"
  ssh "$HOST"
end
