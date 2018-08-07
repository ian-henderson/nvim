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

" Custom File Types
  au BufNewFile,BufRead *.story set filetype=javascript


" Pathogen:
" ------------------------------------------------------------------------------

  execute pathogen#infect()

" ALE (Asychronous Line Engine)
  " Limit linters used for JavaScript.
    let g:ale_linters = {
    \  'javascript': ['flow']
    \}
    highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
    highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
    let g:ale_sign_error = 'X' " could use emoji
    let g:ale_sign_warning = '?' " could use emoji
    let g:ale_statusline_format = ['X %d', '? %d', '']
  " %linter% is the name of the linter that provided the message
  " %s is the error or warning message
    let g:ale_echo_msg_format = '%linter% says %s'
  " Map keys to navigate between lines with errors and warnings.
    nnoremap <leader>an :ALENextWrap<cr>
    nnoremap <leader>ap :ALEPreviousWrap<cr>

" ctrlp
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'

" nerdtree
  " opens nerdtree if no file is specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  " opens nerdtree if directory is opened
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
  " closes vim if only window left open is nerdtree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  " mapping
    map <C-n> :NERDTreeToggle<CR>

" palenight
  let g:palenight_terminal_italics=1

" vim-closetag
  let g:closetag_filenames='*.html,*.js,*.php'

" vim-jsx
  let g:jsx_ext_required=0


" Indentation:
" ------------------------------------------------------------------------------

  set breakindent linebreak

" Tabstop (:help 'tabstop', option 2)
  set expandtab shiftwidth=2 tabstop=2


" Interface:
" ------------------------------------------------------------------------------

  if (has("termguicolors"))
    set termguicolors
  endif
  let &showbreak='+++ '
  set background=dark mouse=a noshowcmd number relativenumber
  colorscheme palenight


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

  set incsearch ignorecase smartcase path+=**
  set wildmenu wildignorecase wildignore+=*/tmp/*,*.so,*.swp,*.zip
