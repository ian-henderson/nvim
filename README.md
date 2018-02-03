# Neovim Config

A nvim configuration directory. Plugins are added to the runtime path via Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen)!

## Installation

Run this command from your `~/.config` directory:

`mkdir ~/.config && git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim`

## Plugins

* [tpope/vim-sensible](https://github.com/tpope/vim-sensible)
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)
* [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
* [mxw/vim-jsx](https://github.com/mxw/vim-jsx)
* [ervandew/supertab](https://github.com/ervandew/supertab)

### Updating Plugins

Run this command from your `~/.config/nvim` directory:

`git -C $HOME/.config/nvim submodule update -f --recursive --remote`

Recommended: Create an alias for your shell, e.g.

`alias vim-update='git -C $HOME/.config/nvim submodule update -f --recursive --remote'`
