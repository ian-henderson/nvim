" File: ~/.config/nvim/init.vim
" Author: Ian Henderson

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Colorscheme
colorscheme cobalt2

" Mouse
set mouse=a

" Number
set number
set relativenumber

" Tabstop (option 2)
set expandtab
set shiftwidth=8
set tabstop=8

" vim-jsx
let g:jsx_ext_required=0
