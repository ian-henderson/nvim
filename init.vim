" ------------------------------------------------------------------------------
" File:   $HOME/.config/nvim/init.vim
" Author: Ian Henderson
" ------------------------------------------------------------------------------


" Vim:
" ------------------------------------------------------------------------------
  filetype plugin indent on
  syntax on
" Removes trailing whitespace on save
  autocmd BufWritePre * %s/\s\+$//e


" Pathogen:
" ------------------------------------------------------------------------------
  execute pathogen#infect()
" vim-closetag
  let g:closetag_filenames='*.html,*.js,*.php'
" vim-jsx
  let g:jsx_ext_required=0


" Indentation:
" ------------------------------------------------------------------------------
  set breakindent
  set linebreak
" Tabstop (:help 'tabstop', option 2)
  set expandtab
  set shiftwidth=2
  set tabstop=2


" Interface:
" ------------------------------------------------------------------------------
  colorscheme materialtheme
  set mouse=a
  set noshowcmd
  let &showbreak='+++ '


" Mappings:
" ------------------------------------------------------------------------------
" Reloads Vim config files
  nnoremap <Leader>s :source $MYVIMRC<CR>
" <esc> clears text highlighted by search
  nnoremap <esc> :noh<return><esc>
" Jumps between buffers
  nnoremap gb :ls<CR>:b<Space>
" Moves the cursor through soft-wrapped lines
  nnoremap <expr> j v:count ? 'j' : 'gj'
  nnoremap <expr> k v:count ? 'k' : 'gk'


" Search:
" ------------------------------------------------------------------------------
  set incsearch
  set ignorecase
  set path+=**
  set smartcase
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip
  set wildignorecase
  set wildmenu
