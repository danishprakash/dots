filetype off                  " required
syntax on
filetype plugin indent on 

call plug#begin('~/.vim/plugged')

"Plugins to install
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
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
Plug 'chriskempson/base16-vim'
"Plug 'vim-syntastic/syntastic'


"vim-plug section end
call plug#end()

"YCM config file
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" Indentline settings
let g:indentLine_char = '|'
let g:indentLine_color_term = 239

" Misc
set foldmethod=indent		"Enable code folding
set foldlevel=99
set number			" Show line number
set relativenumber		" Show line numbers relative to the current line
set nocompatible              	" required
set cursorline			" highlight the current line
set ignorecase			" Case insensitive search
set incsearch			" Search as you type

"NERDTree specifics
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"defualt airline theme
let g:airline_theme='base16'

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    "\ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |


" Remappings
nnoremap <Left> :echo "won't happen! Use the h key"<cr>
nnoremap <Right> :echo "won't happen! Use the l key"<cr>
nnoremap <Up> :echo "won't happen! Use the k key"<cr>
nnoremap <Down> :echo "won't happen! Use the j key"<cr>

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk


"let python_highlight_all=1
syntax on

set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

"Setting the default color scheme
colorscheme nord
