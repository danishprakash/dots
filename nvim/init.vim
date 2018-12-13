"         _
"  __   _(_)_ __ ___  _ __ ___ 
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__ 
"    \_/ |_|_| |_| |_|_|  \___|
" 



" vim-zen
" -------

call plug#begin('~/.local/share/nvim/plugged')

" code formatting
Plug 'w0rp/ale'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier'
Plug 'pangloss/vim-javascript'

" corschemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'
Plug 'crusoexia/vim-monokai'
Plug 'Lokaltog/vim-monotone'
Plug 'ewilazarus/preto'

" tabular mode
Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'

" general utils
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'simeji/winresizer'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'

" personal
Plug 'danishprakash/vimport'
Plug 'danishprakash/vim-githubinator'
Plug 'Users/danishprakash/programming/vim-blameline/blameline.vim'

" Plugin 'neomake/neomake'
" Plugin 'prakashdanish/vim-githubinator'
" Plugin 'zchee/deoplete-jedi'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'prakashdanish/vimport'
" Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()



" globals
" -------

let g:leader="\\"
let g:NERDTreeMinimalUI=1
let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:completor_python_binary = '/usr/bin/python3'
let g:githubinator_no_default_mapping=0
let g:nord_comment_brightness = 10
let g:ale_linters = {'python': ['flake8'], 'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['prettier'], 'python': ['autopep8']}
let g:ale_fix_on_save=1
let g:gitgutter_max_signs = 1000




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
set signcolumn=yes	     " show sign column always
set tabstop=4
set shiftwidth=4
set expandtab
set completeopt+=menuone
set nohlsearch
set magic
set ai                   " auto indent
set si                   " smart indent
set undofile	         " maintain undo history bw sessions
set undodir=~/.config/nvim/undodir

" set ruler
" set mouse=a              " allows mouse interaction within vim
" set completeopt-=preview " deoplete: turn off preview window




" autocommands
" --------

" disable syntax highlighting for markdown files
augroup textfiles
  autocmd!
  autocmd filetype markdown :setlocal spell spelllang=en |
  autocmd filetype markdown :syntax off |
  autocmd filetype markdown :setlocal wrap
augroup end

" source vimrc when saved 
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" setting wrap while editing markdown files
autocmd FileType markdown setlocal wrap nocursorline

" start NERDTree on start-up 


" remappings
" ----------

" create TODO: shorthand
nnoremap <leader>td oTODO: <ESC>:Commentary<CR>A

" cycle through buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" add new line(o/O) without entering insert mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" overwrite write op on protected files
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" remap C-/ to comment out the current line
nnoremap <C-_> gcc

" toggle gitgutter
nnoremap <leader>gt :GitGutterToggle<CR>

" open file finder
nnoremap <leader>1 :Files<CR>

" open line finder
nnoremap <leader>2 :Lines<CR>

" open buffer finder
nnoremap <leader>3 :Buffers<CR>

" search using rg
nnoremap <leader>4 :Rg 

" \_ uses last changed or yanked text as an object
onoremap <leader>_ :<C-U>normal! `[v`]<CR>

" remap return to ':'
nnoremap <CR> :

" start nerdtree 
nnoremap <leader>nd :NERDTreeToggle<CR>

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
nnoremap <leader>q :bd<cr>

" save current file
nnoremap <leader>p <esc>:w<cr>

" surround current word with double-quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" open vimrc in vertial split and source it
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>so :so $MYVIMRC<cr>

" move around wrapped lines as if separate lines
" noremap <silent> j gj
" noremap <silent> k gk

" move to beginning/end of line
nnoremap H ^
nnoremap L $

"move 5 lines up and down while holding Shift and j/k
nnoremap <silent> <C-j> :+5 <CR>
nnoremap <silent> <C-k> :-5 <CR>

" source plugin file (dev)
nnoremap <leader>sp :so /Users/danishprakash/.local/share/nvim/site/autoload/zen.vim<cr>




" statusline
" ----------

" function to return branch name of working directory
function! GitBranch() abort
    let l:branch = system("git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS=\"/\"} {print $3}'")
    return len(l:branch) > 0 ? substitute(l:branch, '\n', '', '') : '' 
endfunction

set statusline=                     " clear the statusline
set statusline=%#FilePath#
set statusline+=\ %F\               " path of the file
set statusline+=%#GitBranch#
set statusline+=[%{GitBranch()}]\ " git branch
set statusline+=%#Sep1#
set statusline+=%=                  " right align items henceforth
set statusline+=%#FileType#
set statusline+=\ [%Y]\             " filetype
set statusline+=%#CursorInfo#
set statusline+=[%l:%c]             " current row and column
set statusline+=\ %p\ \             " percentage of file at current cursor position




" colors
" ------

syntax on
colorscheme preto
filetype off
filetype plugin indent on
set listchars=tab:│\ ,nbsp:␣,trail:∙,extends:>,precedes:<
set fillchars=vert:\|

" hi LineNr ctermfg=58 ctermbg=1
" hi Default ctermfg=1
hi Search ctermbg=58 ctermfg=15

hi Comment ctermfg=237
hi SpellBad none
hi SpellBad cterm=underline

hi clear SignColumn
" hi SignColumn ctermbg=232
hi EndOfBuffer ctermfg=232 ctermbg=232
hi GitGutterAdd ctermfg=2
hi GitGutterChange ctermfg=10
hi GitGutterDelete ctermfg=1
hi GitGutterChangeDelete ctermfg=10
hi Visual ctermfg=White ctermbg=Black
hi CursorLine ctermfg=none ctermbg=235

hi StatusLine ctermbg=234 ctermfg=darkgray
hi StatusLineNC ctermbg=234 ctermfg=darkgray
hi FilePath ctermbg=234 ctermfg=darkgray
hi Sep1 ctermbg=234 ctermfg=darkgray




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


" return length of longest line in the file 
function! LongestLine() abort
    let l:longest = 0
    let l:current = 1
    let l:total_lines = line('$')
    let l:old_cursor = getcurpos()

    while current <= total_lines
        call setpos('.', [0, l:current, 1])
        let l:column_length = col('$')
        if l:column_length > l:longest
            let l:longest = l:column_length
        endif
        let l:current += 1
    endwhile

    call setpos('.', l:old_cursor)
    return l:longest
endfunction
