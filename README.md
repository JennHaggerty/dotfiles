dotfiles
========

# Install

## *nix

```bash
$ git clone  https://github.com/ratmav/dotfiles.git
$ cd dotfiles && ./bootstrap.sh && source ~/.bash_profile
```

**NOTE**: Currently tested on macOS. See [#13](https://github.com/ratmav/dotfiles/issues/13) for Linux status.

# Use

## `tmux`

### Prefix

The tmux prefix is currently configured as Ctrl-Space.

### Keybindings

* [tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control#bindings)
* [tmux-yank](https://github.com/tmux-plugins/tmux-yank#key-bindings)

## `nvim`

### Leader

The Neovim leader key is currently configured as Space.

### Keybindings

* [winresizer](https://github.com/simeji/winresizer#in-default-setting)
* [vim-parinfer](https://github.com/bhurlow/vim-parinfer#mappings)
* [vim-bufkill](https://github.com/qpkorr/vim-bufkill#usage)
* [nerdtree](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt#L220)

# Update

## *nix

```bash
$ cd dotfiles
$ ./bootstrap.sh && source ~/.bash_profile
```

# Initialization

Run these commands after installation or updates.

## `tmux`

`prefix` + I

**NOTE**: This means hold the Ctrl key and press Space (`prefix`), then release those keys and press Shift and the `i` key (capital "I").

## `nvim`

On the `nvim` command line, run `:PlugInstall`.
