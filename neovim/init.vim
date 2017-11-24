set number
set cursorline

call plug#begin('~/.local/share/nvim/plugged')

"Plugins to install
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'severin-lemaignan/vim-minimap'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'trevordmiller/nova-vim'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'vim-syntastic/syntastic'

let g:deoplete#enable_at_startup = 1

"vim-plug section end
call plug#end()
