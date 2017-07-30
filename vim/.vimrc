set number

set nocompatible              " required
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
"Plug 'vim-syntastic/syntastic'


"vim-plug section end
call plug#end()

"YCM config file
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

"Enable code folding
set foldmethod=indent
set foldlevel=99

"NERDTree specifics
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"defualt airline theme
let g:airline_theme='base16'


"Setting the default color scheme
colorscheme nord 



au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"let python_highlight_all=1
syntax on

set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
