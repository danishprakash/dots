set number
set relativenumber
set cursorline

colorscheme nord

"call plug#begin('~/.local/share/vim/plugged')
call plug#begin('/etc/xdg/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
"Plug 'trevordmiller/nova-vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'vim-syntastic/syntastic'

call plug#end()

let g:deoplete#enable_at_startup = 1
