# Setup

## Configuration location

The LazyVim configuration lives at:

```text
~/.config/lazyvim
```

Neovim selects this profile through the `NVIM_APPNAME` environment variable.
The canonical shell-neutral command is:

```sh
NVIM_APPNAME=lazyvim nvim
```

Arguments can be passed after `nvim`:

```sh
NVIM_APPNAME=lazyvim nvim path/to/file
```

This keeps the LazyVim configuration and its Neovim data separate from other
profiles, such as `scvim`.

## Shell functions

A function is optional. The function only needs to set `NVIM_APPNAME` while it
starts Neovim. Put the example for your shell in the local customization
mechanism that your environment already uses.

### Nushell

```nu
export def lazyvim [...args] {
    with-env { NVIM_APPNAME: "lazyvim" } {
        nvim ...$args
    }
}
```

The module path and load order depend on the environment. They are not part of
the setup requirements for this repository.

### Bash or zsh

```sh
lazyvim() {
    NVIM_APPNAME=lazyvim nvim "$@"
}
```

## Verify the profile

Start LazyVim with the canonical command or a shell function, then run:

```vim
:echo $NVIM_APPNAME
:echo stdpath('config')
```

The output should identify the `lazyvim` profile and the `lazyvim` configuration
directory.

## Related configuration

The enabled LazyVim extras are listed in [`lazyvim.json`](../lazyvim.json).
Plugin versions are recorded in [`lazy-lock.json`](../lazy-lock.json).
