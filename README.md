# Neovim Config
A nvim configuration directory. Plugins are added to the runtime path via Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen)!

## Installation

`cd ~/.config;`

`git clone --recurse-submodules https://github.com/ian-henderson/nvim.git;`

## Updating

Run this command from the top of the `nvim` directory.

`git submodule update -f --recursive --remote;`

Personally, I add a `vim_update` alias to my shell environment, e.g.

`alias vim_update='git -C $HOME/.config/nvim submodule update -f --recursive --remote'`

## Plugins

* [tpope/vim-sensible](https://github.com/tpope/vim-sensible)
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)
* [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
* [mxw/vim-jsx](https://github.com/mxw/vim-jsx)
* [ervandew/supertab](https://github.com/ervandew/supertab)
