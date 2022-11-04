# My own fish scripts add on 02.11.2022

# Enable ssh agent for fish
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK

  ssh-add $HOME/.ssh/ssh_key
end

#thefuck
thefuck --alias | source

# Add autojump
if test -e "~/.autojump/share/autojump/autojump.fish"
  source ~/.autojump/share/autojump/autojump.fish
else if test -e "/usr/share/autojump/autojump.fish"
  source /usr/share/autojump/autojump.fish
end

alias isfish="echo 'YES'"
