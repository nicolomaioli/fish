if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ti='tmux new-session -d'
alias ta='tmux a -t'
alias tk='tmux kill-session -t'
alias tl='tmux list-sessions'
