" ==============================================================================
" File: ~/.config/nvim/init.vim
" Author: Ian Henderson
" ==============================================================================

" ==============================================================================
" = Vim & Pathogen
" ==============================================================================
  filetype plugin indent on
  syntax on
" Removes trailing whitespace on save
  autocmd BufWritePre * %s/\s\+$//e

" ==============================================================================
" = Pathogen & Plugins
" ==============================================================================
  execute pathogen#infect()
" vim-jsx
  let g:jsx_ext_required=0

" ==============================================================================
" = Interface
" ==============================================================================
  colorscheme cobalt2
  set mouse=a
  set noshowcmd
  set number
  set relativenumber

" ==============================================================================
" = Mappings
" ==============================================================================
  nnoremap <Leader>s :source $MYVIMRC<CR>
" <esc> clears text highlighted by search
  nnoremap <esc> :noh<return><esc>
" Jumps between buffers
  nnoremap gb :ls<CR>:b<Space>

" ==============================================================================
" = Tabstop (:help 'tabstop', option 2)
" ==============================================================================
  set expandtab
  set shiftwidth=4
  set tabstop=4
