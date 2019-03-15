# NeoVim

My personal NeoVim directory. Plugins are added to the runtime path via [vim-pathogen](https://github.com/tpope/vim-pathogen).

![](images/screenshot-0.png)

## Installation

```bash
  mkdir ~/.config;
  git clone --recurse-submodules https://github.com/ian-henderson/nvim.git ~/.config/nvim;
```

Alternatively, you can install the submodules after doing a basic git clone into your nvim directory.

```bash
  mkdir ~/.config;
  git clone https://github.com/ian-henderson/nvim.git ~/.config/nvim;
  cd ~/.config/nvim;
  ./cli.sh bootstrap;
```

## Plugins

### Colorschemes
* [dracula](https://github.com/dracula/vim/tree/b7e11c087fe2a9e3023cdccf17985704e27b125d)
* [gruvbox](https://github.com/morhetz/gruvbox)
* [hybrid](https://github.com/w0ng/vim-hybrid)
* [monotone](https://github.com/Lokaltog/vim-monotone)
* [night-owl](https://github.com/haishanh/night-owl.vim)
* [oceanic-next](https://github.com/mhartington/oceanic-next)
* [onedark](https://github.com/joshdick/onedark.vim)
* [solarized8](https://github.com/lifepillar/vim-solarized8)
* [tender](https://github.com/jacoborus/tender.vim)
* [zenburn](https://github.com/jnurmine/Zenburn.git)

### Language
* [graphql](https://github.com/jparise/vim-graphql)
* [javascript](https://github.com/pangloss/vim-javascript)
* [jsdoc-syntax](https://github.com/othree/jsdoc-syntax.vim)
* [jsx](https://github.com/mxw/vim-jsx)

### Tools
* [airline](https://github.com/vim-airline/vim-airline)
* [airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [ale](https://github.com/w0rp/ale)
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* [closetag](https://github.com/alvan/vim-closetag)
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
* [fugitive](https://github.com/tpope/vim-fugitive)
* [gitgutter](https://github.com/airblade/vim-gitgutter)
* [goyo](https://github.com/junegunn/goyo.vim)
* [sass-colors](https://github.com/shmargum/vim-sass-colors)
* [sensible](https://github.com/tpope/vim-sensible)
* [startify](https://github.com/mhinz/vim-startify)
* [supertab](https://github.com/ervandew/supertab)
* [vinegar](https://github.com/tpope/vim-vinegar)

### Plugin CLI

#### Adding one or more plugins

```bash
./cli.sh install [<plugin-git-url>...];
```

#### Listing plugins

```bash
./cli.sh list;
```

#### Removing one or more plugins

```bash
./cli.sh uninstall [<plugin>...];
```

#### Updating Plugins

```bash
# Update all plugins
./cli.sh update;

# Update specific plugins
./cli.sh update [<plugin>...];
```
