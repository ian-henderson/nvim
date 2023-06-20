" vim-plugin
call plug#begin()

Plug 'chriskempson/base16-vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

"-------------------------------------------------------------------------------
" Plugins:
"-------------------------------------------------------------------------------
" ale
let g:ale_linters = {'rust': ['analyzer']}
" Use ALE and also some plugin 'foobar' as completion sources for all code.
call deoplete#custom#option('sources', { '_': ['ale'] })
" ALE provides an omni-completion function you can use for triggering completion manually with <C-x><C-o>.
set omnifunc=ale#completion#OmniFunc

" base16-vim
colorscheme base16-default-dark

" deoplete
let g:deoplete#enable_at_startup = 1

" rust.vim
let g:cargo_shell_command_runner = '!'
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"-------------------------------------------------------------------------------
" Vim:
"-------------------------------------------------------------------------------
autocmd BufWritePre * %s/\s\+$//e " Removes trailing whitespace on save
filetype plugin indent on
syntax enable

"-------------------------------------------------------------------------------
" Indentation:
"-------------------------------------------------------------------------------
set breakindent linebreak expandtab shiftwidth=4 tabstop=4 " Tabstop (:help 'tabstop', option 2)

"-------------------------------------------------------------------------------
" Interface:
"-------------------------------------------------------------------------------
let &showbreak='... '
set background=dark mouse=a noshowcmd number relativenumber termguicolors

"-------------------------------------------------------------------------------
" Mappings:
"-------------------------------------------------------------------------------
" Reloads Vim config files
nnoremap <Leader>s :source $VIMRC<CR>
" <esc> clears text highlighted by search
nnoremap <esc> :noh<return><esc>
" Go to buffer
nnoremap gb :ls<CR>:b<Space>
" Moves the cursor through soft-wrapped lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
