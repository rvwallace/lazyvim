# LazyVim configuration

Personal [LazyVim](https://www.lazyvim.org/) configuration for Neovim.

This profile uses `NVIM_APPNAME=lazyvim`. It can run beside other Neovim
profiles without sharing their configuration or data.

## Included

- LazyVim with selected editor, UI, Git, and language extras.
- File name and path copy mappings.
- Relative line numbers in Normal mode and absolute line numbers in Insert
  mode.
- Expanded folds when a file opens.
- `mini.align`, `mini.splitjoin`, and `mini.surround`.
- `zdiff.nvim` for multi-buffer Git diffs.
- Ansible, Docker, Go, JSON, Markdown, Nushell, Python, Ruby, Rust, Swift,
  Terraform, TOML, and YAML support.

## Requirements

- Neovim and Git.
- A Nushell installation and `nufmt` for Nushell formatting.
- A Swift toolchain for Swift language support.

LazyVim and Mason install most configured plugins and tools during normal
setup. See [docs/setup.md](docs/setup.md) for the profile command, shell
examples, and language tool details.

## Quick start

Clone this repository to the LazyVim configuration path:

```sh
git clone https://github.com/rwallace/lazyvim.git ~/.config/lazyvim
NVIM_APPNAME=lazyvim nvim
```

You can also start the profile from another directory:

```sh
NVIM_APPNAME=lazyvim nvim path/to/file
```

## License

This configuration uses the Apache License 2.0. See [LICENSE](LICENSE).
