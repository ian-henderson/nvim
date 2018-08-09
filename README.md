# Neovim Config

A nvim configuration directory. Plugins are added to the runtime path via Tim Pope's [vim-pathogen](https://github.com/tpope/vim-pathogen)!

## Installation

```bash
  mkdir -p ~/.config;
  git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim;
```

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

1. Delete relevant section from `.gitmodules`.
2. Stage the `.gitmodules` changes and `git add .gitmodules`.
3. Delete the relevant section from `.git/config`.
4. Run `git rm --cached path_to_submodule` (no trailing slash).
5. Run `rm -rf .git/modules/path_to_submodule`.
6. Commit `git commit -m 'Removed submodule <name>`.
7. Delete the now untracked submodule files `rm -rf path_to_submodule`.

[source](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982)

### Updating Plugins

`git -C ~/.config/nvim submodule update -f --recursive --remote`

#### Alias for your shell

`alias vim-update='git -C ~/.config/nvim submodule update -f --recursive --remote'`
