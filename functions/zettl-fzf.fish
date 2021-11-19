function zettl-fzf
  if test (count $argv) -le 1
    if test (count $argv) -eq 1
      if test $argv[1] = "-f"
        set -l file (zettl list -f | fzf)
        if test $status -eq 0
          zettl fleet -o $file
        end
      else
		    echo "zettl-fzf [-f]" >&2
      end
    else
      set -l file (zettl list | fzf)
      if test $status -eq 0
        zettl note $file
      end
    end
  else
		echo "zettl-fzf [-f]" >&2
  end
end