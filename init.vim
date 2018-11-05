"-------------------------------------------------------------------------------
" File:   $HOME/.config/nvim/init.vim
" Author: Ian Henderson
"-------------------------------------------------------------------------------


"-------------------------------------------------------------------------------
" Vim:
"-------------------------------------------------------------------------------
filetype plugin indent on
syntax on
autocmd BufWritePre * %s/\s\+$//e " Removes trailing whitespace on save


"-------------------------------------------------------------------------------
" Plugins:
"-------------------------------------------------------------------------------
execute pathogen#infect()

" ALE (Asychronous Line Engine)
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '%linter%: %s'
let b:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\}
let g:ale_linters = {
\  'javascript': ['eslint', 'flow'],
\}
let g:ale_sign_error = '😱'
let g:ale_sign_warning = '🤨 '
let g:ale_statusline_format = ['X %d', '? %d', '']
nnoremap <leader>af :ALEFix<cr>
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

" auto-pairs
let g:AutoPairsFlyMode = 0

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" nerdtree
  " opens nerdtree if directory is opened
  autocmd StdinReadPre * let s:std_in = 1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
  " closes vim if only window left open is nerdtree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  " mapping
  map <C-n> :NERDTreeToggle<CR>

" papercolor-theme
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'allow_bold': 1,
  \       'allow_italic': 0
  \     }
  \   }
  \ }

" vim-closetag
let g:closetag_filenames = '*.html,*.js,*.php'

" vim-flow
let g:flow#showquickfix = 0

" vim-gitgutter
set updatetime=100
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk<Paste>

" vim-javascript
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0
au BufNewFile,BufRead *-story.js set filetype=javascript.jsx
au BufNewFile,BufRead *.flow set filetype=javascript.jsx


"-------------------------------------------------------------------------------
" Interface:
"-------------------------------------------------------------------------------
set background=dark
colorscheme PaperColor
if (has("termguicolors"))
  set termguicolors
endif
let &showbreak='+++ '
set background=dark cursorline mouse=a noshowcmd number relativenumber


"-------------------------------------------------------------------------------
" Indentation:
"-------------------------------------------------------------------------------
set breakindent linebreak
set expandtab shiftwidth=2 tabstop=2 " Tabstop (:help 'tabstop', option 2)


"-------------------------------------------------------------------------------
" Mappings:
"-------------------------------------------------------------------------------
" Reloads Vim config files
nnoremap <Leader>s :source $MYVIMRC<CR>
" <esc> clears text highlighted by search
nnoremap <esc> :noh<return><esc>
" Go to buffer
nnoremap gb :ls<CR>:b<Space>
" Moves the cursor through soft-wrapped lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'


"-------------------------------------------------------------------------------
" Search:
"-------------------------------------------------------------------------------
set incsearch ignorecase smartcase path+=**
set wildmenu wildignorecase wildignore+=*/tmp/*,*/cache/*,*/node_modules/*,*.so,*.swp,*.zip
