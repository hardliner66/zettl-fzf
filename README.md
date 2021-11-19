# zettl-fzf

Provides a command wrapper around [zettl][] and [fzf][].

## Installation

### System Requirements

- The **latest** version of [Fish][], currently 3.3.1.
- The **latest** version of [zettl][].
- The **latest** version of [fzf][].

Install with [Fisher][]:

```console
fisher install hardliner66/zettl-fzf
```

<details>
  <summary>Install manually</summary>

This script may not work for all use cases.

```fish
set -l _zettl_fzf_tmp_dir (command mktemp -d)
curl https://codeload.github.com/hardliner66/zettl-fzf/tar.gz/HEAD | tar -xzC $_zettl_fzf_tmp_dir
command cp -R $_zettl_fzf_tmp_dir/zettl-fzf-HEAD/{functions, completions, conf.d} $__fish_config_dir
```

</details>

## Usage
```fish
# show all notes in fzf
zettl-fzf

# same as above
zf

# show all fleeting notes in fzf
zettl-fzf -f

# same as above
zff
```

[fish]: https://fishshell.com/
[fisher]: https://github.com/jorgebucaran/fisher
[fzf]: https://github.com/junegunn/fzf
[zettl]:_https://github.com/hedonhermdev/zettl
