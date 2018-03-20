"gruvbox dark theme settings
colorscheme nord
set background=dark

let g:deoplete#enable_at_startup = 1
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/Cellar/python3/3.6.3/bin/python3'
let g:completor_python_binary = '/usr/local/bin/python3'

"remaps for asyncautocomplete plugin
"let g:mucomplete#enable_auto_at_startup = 1
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
set completeopt+=menuone
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
noremap <silent> j gj
noremap <silent> k gk

set nowrap
set number "always show line number
set relativenumber "show line numbers relative to the current line
set ruler
set cursorline
set ignorecase
set smartcase
set magic
set showmatch "set show matching parenthesis
syntax enable
filetype indent on
set ai "auto indent"
"set si: smart indent"
set wrap
set hlsearch "enable search highlights
set showmode "shows what mode we're currently editing in
set mouse=a
set ts=4 sw=4
let g:monokai_original=1
set clipboard=unnamed

set nuw=4

"let g:molokai_original = 1

"change line number color to grey
highlight LineNr ctermfg=grey

set completeopt-=preview

call plug#begin('~/.local/share/nvim/plugged')

"Plugins to install
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'severin-lemaignan/vim-minimap'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'trevordmiller/nova-vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'zchee/deoplete-jedi'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'lifepillar/vim-mucomplete'
"Plug 'maralla/completor.vim'
"Plug 'roxma/nvim-completion-manager'
"Plug 'prabirshrestha/asyncomplete.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'arcticicestudio/nord-vim'

"Plug 'vim-syntastic/syntastic'

"vim-plug section end
call plug#end()
