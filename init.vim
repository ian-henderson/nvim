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
\  'javascript': ['eslint'],
\}
let g:ale_sign_error = '😱 '
let g:ale_sign_warning = '🧐 '
let g:ale_statusline_format = ['X %d', '? %d', '']
nnoremap <leader>af :ALEFix<cr>
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

" auto-pairs
let g:AutoPairsFlyMode = 0

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" goyo
let g:goyo_linenr = 1
nnoremap <Leader>g :Goyo<CR>

" onedark
let g:onedark_terminal_italics = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

" vim-closetag
let g:closetag_filenames = '*.html,*.js,*.php'

" vim-gitgutter
set updatetime=100
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk<Paste>
let g:gitgutter_override_sign_column_highlight = 1

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
if (has("termguicolors"))
  set termguicolors
endif
colorscheme onedark
let &showbreak='+++ '
set background=dark cursorline mouse=a noshowcmd number relativenumber title


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
