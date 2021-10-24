set -gx VISUAL nvim
set -gx EDITOR nvim

if status is-interactive
	set -gx GITHUB_USER nicolomaioli
	set -gx FISH_CONFIG_FOLDER "$HOME"/.config/fish

	alias gmi='go mod init github.com/"$GITHUB_USER"/(basename $PWD)'
	alias ti='tmux new-session -d'
	alias ta='tmux a -t'
	alias tk='tmux kill-session -t'
	alias tl='tmux list-sessions'

	# Source private files
	for file in (ls $FISH_CONFIG_FOLDER/private | grep .fish\$)
		source $FISH_CONFIG_FOLDER/private/$file
	end
end
