# Neovim Config

A nvim configuration directory. Plugins are added to the runtime path via Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen)!

## Installation

`mkdir -p ~/.config && git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim`

## Plugins

* [ale](https://github.com/w0rp/ale)
* [closetag](https://github.com/alvan/vim-closetag)
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
* [javascript](https://github.com/pangloss/vim-javascript)
* [jsx](https://github.com/mxw/vim-jsx)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [palenight](https://github.com/drewtempelmeyer/palenight.vim)
* [supertab](https://github.com/ervandew/supertab)
* [vim-sensible](https://github.com/tpope/vim-sensible)

### Adding Plugins

`git submodule add [plugin url] bundle/[plugin name]`

### Removing Plugins

[StackOverflow Solution](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982)

### Updating Plugins

`git -C ~/.config/nvim submodule update -f --recursive --remote`

#### Alias for your shell

`alias vim-update='git -C ~/.config/nvim submodule update -f --recursive --remote'`
