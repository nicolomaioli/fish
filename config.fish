set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx GITHUB_USER nicolomaioli
set -gx FISH_CONFIG_FOLDER $HOME/.config/fish

fish_add_path -a $HOME/Library/Python/3.9/bin

for file in (ls $FISH_CONFIG_FOLDER/private | grep .fish\$)
	source $FISH_CONFIG_FOLDER/private/$file
end

if status is-interactive
	alias gmi='go mod init github.com/"$GITHUB_USER"/(basename $PWD)'
	alias ti='tmux new-session -d'
	alias tl='tmux list-sessions'

	abbr -a ta 'tmux a -t'
	abbr -a tk 'tmux kill-session -t'
end
