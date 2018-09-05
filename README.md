# NeoVim

My personal NeoVim directory. Plugins are added to the runtime path via [vim-pathogen](https://github.com/tpope/vim-pathogen).

## Installation

```bash
  mkdir -p ~/.config;
  git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim;
```

## Current Plugins

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

### Plugin CLI

#### Adding one or more plugins

```bash
./cli.sh install [<plugin-git-url>...]
```

#### Listing plugins

```bash
./cli.sh list
```

#### Removing one or more plugins

```bash
./cli.sh uninstall [<plugin>...]
```

#### Updating Plugins

```bash
# Update all plugins
./cli.sh update

# Update specific plugins
./cli.sh update [<plugin>...]
```
