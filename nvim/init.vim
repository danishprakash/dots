"         _
"  __   _(_)_ __ ___  _ __ ___ 
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__ 
"    \_/ |_|_| |_| |_|_|  \___|
" 



" vim-zen
" -------

call plug#begin()

" code formatting
Plug 'w0rp/ale'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

" corschemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'

" tae mode
Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'

" geral utils
Plug 'junegunn/fzf'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'simeji/winresizer'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-smooth-scroll'

" se
Plug 'danishprakash/vimport'
Plug 'danishprakash/vim-githubinator'

" Plugin 'neomake/neomake'
" Plugin 'prakashdanish/vim-githubinator'
" Plugin 'zchee/deoplete-jedi'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'prakashdanish/vimport'
" Plugin 'sonph/onehalf', {'rtp': 'vim/'}




" globals
" -------

let g:leader="\\"
let g:NERDTreeMinimalUI=1
let g:python2_host_prog = '/usr/local/bin/python'
let g:completor_python_binary = '/usr/local/bin/python3'
let g:python3_host_prog = '/usr/local/Cellar/python3/3.6.3/bin/python3'
let g:githubinator_no_default_mapping=0





" configurations
" --------------

set nowrap
set background=dark
set smartcase
set ignorecase           " ignore case while searching
set number               " always show line number
set relativenumber       " show line numbers relative to the current line
set cursorline           " highlight current cursor column
set showmatch            " set show matching parenthesis
set hlsearch             " enable search highlights
set scrolloff=10         " cursor remains at ~center of the window
set shortmess+=c         " Shut off completion messages
set belloff+=ctrlg       " If Vim beeps during completion
set noshowmode           " hide current mode label
set mouse=a              " enable mouse for `a`ll modes
set tabstop=4
set shiftwidth=4
set expandtab
set completeopt+=menuone
set nohlsearch
set magic

" set ruler
" set ai                   " auto indent
" set si                   " smart indent
" set mouse=a              " allows mouse interaction within vim
" set completeopt-=preview " deoplete: turn off preview window




" autocmds
" --------

" source vimrc when saved 
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" setting wrap while editing markdown files
autocmd FileType markdown set wrap

" start NERDTree on start-up 
" autocmd VimEnter * NERDTree




" remappings
" ----------

" smooth scroll plugin mappings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" enable Goyo for markdown writing and toggle ALE
nnoremap <leader>go :Goyo<cr> :ALEToggle<cr>

" run current python file    
nnoremap <leader>l3 :!python3 expand('%:p')<cr>

" codefmt 
nnoremap <leader>fm :FormatCode<cr>
vnoremap <leader>fm :FormatLines<cr>

" ALE toggle
nnoremap <leader>al :ALEToggle<cr>

" moving across splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" open a vertical split window and fire up FZF
nnoremap <leader>v :vnew<cr>:FZF ~/programming<cr>

" convert current word to uppercase and enter insert mode
nnoremap <S-u> viwU<esc>el

" comment using commentary
nnoremap <leader>q :q<cr>

" save current file
nnoremap <leader>p <esc>:w<cr>

" surround current word with double-quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" open vimrc in vertial split and source it
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>so :so $MYVIMRC<cr>

" move around wrapped lines as if separate lines
noremap <silent> j gj
noremap <silent> k gk

" move to beginning/end of line
nnoremap H ^
nnoremap L $

"move 5 lines up and down while holding Shift and j/k
nnoremap <silent> <C-j> :+5 <CR>
nnoremap <silent> <C-k> :-5 <CR>

" source plugin file (dev)
nnoremap <leader>sp :so /Users/danishprakash/.local/share/nvim/site/autoload/zen.vim<cr>

" fzf fuzzy finder
nnoremap <C-p> :FZF <cr>




" statusline
" ----------

" function to return branch name of working directory
function! GitBranch() abort
    let l:branch = system("git symbolic-ref HEAD | awk 'BEGIN{FS=\"/\"} {print $3}'")
    return len(l:branch) > 0 ? substitute(l:branch, '\n', '', '') : '' 
endfunction

set statusline=                     " clear the statusline
" set statusline=%#FilePath#
" set statusline+=\ %F\               " path of the file
set statusline+=%#GitBranch#
set statusline+=[%{GitBranch()}]\ " git branch
set statusline+=%#Sep1#
set statusline+=%=                  " right align items henceforth
set statusline+=%#FileType#
set statusline+=\ [%Y]\             " filetype
set statusline+=%#CursorInfo#
set statusline+=[%l:%c]           " current row and column
" set statusline+=\ %p\ \             " percentage of file at current cursor position

" hi statusline ctermfg=00 ctermbg=02 cterm=NONE
" hi statusline ctermbg=white ctermfg=gray
" hi StatuslineNC ctermfg=00 ctermbg=02 cterm=NONE 
" hi VertSplit ctermfg=235 ctermbg=237

" " statusline colors
" hi GitBranch ctermbg=00 ctermfg=02
" hi FileType ctermbg=00 ctermfg=02
" hi CursorInfo ctermbg=00 ctermfg=02
" hi Sep1 ctermbg=00 ctermfg=02
" hi FilePath ctermbg=00 ctermfg=02




" colors
" ------

syntax on
colorscheme nord
filetype plugin indent on
set listchars=tab:│\ ,nbsp:␣,trail:∙,extends:>,precedes:<
set fillchars=vert:\│

"hi LineNr ctermfg=1 ctermbg=1
hi Default ctermfg=1
hi Search ctermbg=58 ctermfg=15

hi clear SignColumn
" hi SignColumn ctermbg=235
" hi EndOfBuffer ctermfg=235 ctermbg=235
" hi GitGutterAdd ctermbg=235 ctermfg=235
" hi GitGutterChange ctermbg=235 ctermfg=235
" hi GitGutterDelete ctermbg=235 ctermfg=235
" hi GitGutterChangeDelete ctermbg=235 ctermfg=235
hi Visual ctermfg=White ctermbg=Black






" functions
" ---------

" blink cursorline for searches
nnoremap <silent> n n:cal StrobeCursorLine()<cr>
nnoremap <silent> N N:call StrobeCursorLine()<cr>

function! StrobeCursorLine()
    for count in range(3)
        set invcursorline
        redraw
        exec 'sleep 10m'
        set invcursorline
        redraw
        exec 'sleep 10m'
    endfor
endfunction

