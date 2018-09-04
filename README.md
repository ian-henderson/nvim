# NeoVim

My personal NeoVim setup. Plugins are added to the runtime path via [vim-pathogen](https://github.com/tpope/vim-pathogen).

## Installation

```bash
  mkdir -p ~/.config;
  git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim;
```

## Plugins

* [ale](https://github.com/w0rp/ale)
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [supertab](https://github.com/ervandew/supertab)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [vim-closetag](https://github.com/alvan/vim-closetag)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-graphql](https://github.com/jparise/vim-graphql)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [vim-jsx](https://github.com/mxw/vim-jsx)
* [vim-sensible](https://github.com/tpope/vim-sensible)

### Adding Plugins

```bash
./cli.sh install [plugin url]
```

### Removing Plugins

1. Delete relevant section from `.gitmodules`.
2. Stage the `.gitmodules` changes and `git add .gitmodules`.
3. Delete the relevant section from `.git/config`.
4. Run `git rm --cached path_to_submodule` (no trailing slash).
5. Run `rm -rf .git/modules/path_to_submodule`.
6. Commit `git commit -m 'Removed submodule <name>'`.
7. Delete the now untracked submodule files `rm -rf path_to_submodule`.

[source](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982)

### Updating Plugins

```bash
git -C ~/.config/nvim submodule update -f --recursive --remote
```

#### Alias for your shell

```bash
alias vim-update='git -C ~/.config/nvim submodule update -f --recursive --remote'
```
