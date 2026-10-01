# Changelog

This file lists all notable changes to the LazyVim configuration.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]

### 2026-10-01

#### Added

- Added Dial mappings to increment and decrement numbers, dates, and other
  supported values.
- Added Tree-sitter context headers for the current code block.
- Added Git file support for commit messages and Git configuration files.
- Added `p` in Visual mode to paste without replacing the yank register.
- Added `J` to join lines without moving the cursor.
- Added `gcA` to insert a comment at the end of the current line.

#### Changed

- Disabled automatic comment continuation when adding or wrapping lines.

### 2026-09-30

#### Added

- Added the initial LazyVim configuration baseline with the selected language
  and utility extras.
- Added local contribution guidance and Conventional Commit rules.
- Added generic setup documentation for the LazyVim profile and shell startup
  functions.
- Added `<leader>yf`, `<leader>yp`, and `<leader>yr` mappings to copy the
  current file name, absolute path, and relative path.
- Set relative line numbers in normal mode and absolute line numbers in insert
  mode.
- Set folds to open by default when a file starts.
- Enabled case-insensitive filename completion.
- Enabled split previews for substitution commands.
- Improved diff alignment with the patience algorithm and `linematch:60`.
- Disabled the startup dashboard.
- Added `zdiff.nvim` for multi-buffer Git diffs with `<leader>gV` for
  uncommitted changes and `<leader>gM` for changes against `main`.
- Enabled `mini.surround` for adding, deleting, and replacing surrounding
  characters with the `gs` mapping group.
- Added `mini.align` with `ga` and `gA` text alignment mappings.
- Added `mini.splitjoin` with `gS` structural split and join mapping.
- Added Ansible support with `ansiblels` and `ansible-lint`.
- Added Swift support with `sourcekit-lsp`, Tree-sitter, and `swiftformat`.
- Added `nufmt` formatting for Nushell files.
- Added `jk` and `kj` mappings to exit insert mode.
