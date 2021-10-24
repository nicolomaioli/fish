if status is-interactive
	set -gx EDITOR nvim
	set -gx GITHUB_USER nicolomaioli

	alias gmi='go mod init github.com/"$GITHUB_USER"/(basename $PWD)'
	alias ti='tmux new-session -d'
	alias ta='tmux a -t'
	alias tk='tmux kill-session -t'
	alias tl='tmux list-sessions'
end
