function tn
	set SESSION (basename $PWD)
	set SESSION_EXISTS (tmux list-sessions 2>/dev/null | grep $SESSION)

	if [ -z "$SESSION_EXISTS" ]
		tmux new-session -d -s $SESSION
		tmux rename-window -t 0 'EDITOR'
		tmux send-keys -t 'EDITOR' $EDITOR C-m
		tmux new-window -t $SESSION:1 -n 'TERM'
	end

	tmux attach-session -t $SESSION:0
end
