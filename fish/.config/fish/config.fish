if status is-interactive
    # Commands to run in interactive sessions can go here
	# TODO: condition this line on the existence of `starship`
	starship init fish | source
end
