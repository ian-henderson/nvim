# Neovim Config

A nvim configuration directory. Plugins are added to the runtime path via Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen)!

## Installation

Run this command:

`mkdir -p ~/.config && git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim`

## Plugins

* [alvan/vim-closetag](https://github.com/alvan/vim-closetag)
* [ervandew/supertab](https://github.com/ervandew/supertab)
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)
* [mxw/vim-jsx](https://github.com/mxw/vim-jsx)
* [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
* [tpope/vim-sensible](https://github.com/tpope/vim-sensible)

### Updating Plugins

Run this command:

`git -C ~/.config/nvim submodule update -f --recursive --remote`

Create an alias for your shell, e.g.

`alias vim-update='git -C ~/.config/nvim submodule update -f --recursive --remote'`
