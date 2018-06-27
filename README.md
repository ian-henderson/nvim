# Neovim Config

A nvim configuration directory. Plugins are added to the runtime path via Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen)!

## Installation

Run this command:

`mkdir -p ~/.config && git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim`

## Plugins

* [alvan/vim-closetag](https://github.com/alvan/vim-closetag)
* [elixir-editors/vim-elixir](https://github.com/elixir-editors/vim-elixir)
* [ervandew/supertab](https://github.com/ervandew/supertab)
* [flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)
* [leafgarland/typescript-vim](https://github.com/leafgarland/typescript-vim)
* [mxw/vim-jsx](https://github.com/mxw/vim-jsx)
* [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
* [tpope/vim-sensible](https://github.com/tpope/vim-sensible)

### Adding Plugins

`git submodule add [plugin url] bundle/[plugin name]`

### Removing Plugins

[StackOverflow Solution](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982)

### Updating Plugins

`git -C ~/.config/nvim submodule update -f --recursive --remote`

#### Create an alias for your shell

`alias vim-update='git -C ~/.config/nvim submodule update -f --recursive --remote'`
