function tn
	set TMUX (pgrep tmux)

	if [ -n "$TMUX" ]
		set SESSION_EXISTS (tmux list-sessions | grep $SESSION)
	end

	set SESSION (basename $PWD)

	if [ -z "$SESSION_EXISTS" ]
		tmux new-session -d -s $SESSION
		tmux rename-window -t 0 'EDITOR'
		tmux send-keys -t 'EDITOR' $EDITOR C-m
		tmux new-window -t $SESSION:1 -n 'TERM'
	end

	tmux attach-session -t $SESSION:0
end
