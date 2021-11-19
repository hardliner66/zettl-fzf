set command_name zettl-fzf
complete -c $command_name -f
complete -c $command_name -n "not __fish_contains_opt -s f" -a "-f"