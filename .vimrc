" Not trying to be vi compatible
set nocompatible

" Enable syntax highlightening
syntax enable

" Force tab size to 2 spaces
set tabstop=2
set softtabstop=2
set expandtab " use spaces instead of tab

" Smart tab
set smarttab

set shiftwidth=2
set tabstop=2



" Display line numbers
set number

" Display file stat
set ruler

" Show current mode
set showmode
" Show command
set showcmd

" Tell vim to remember how many lines of command to remember
set history=500

" Autoread when file is changed from outside
set autoread

" Force language to be English avoid things being messed up by system lang
" settings
let LANG='en'
set langmenu=en

" Height of command bar
set cmdheight=1

" Show matching bracket when cursor is over it
set showmatch
" How many tenth of second to blink when matching brackets
set mat=2

" No stupid error sound and visual effects
set noerrorbells
set novisualbell
set t_vb= " dont flash the screen
set timeoutlen=500

" Force the default file encoding to be utf-8
set encoding=utf8

" File formats setting
set fileformats=unix,dos,mac


" Move up/down editor lines
nnoremap j gj
nnoremap k gk



" Searches
set hlsearch
set incsearch
set ignorecase
set smartcase

" Fuzzy file find
" Search down recursively into subdirectories
" Provid tab completion for all file-related tasks
set path+=**
" Display all matching files when tab complete
set wildmenu

" remove tailing white spaces when saving
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Plugin configurations for vim-plug
" Plugins will be downloaded under the directory specified below.
call plug#begin('~/.vim/plugged')



" function to strip all trailing whitespaces without corrupting cursor
" position and last search
function <SID>StripTrailingWhitespaces()
    let _s = @/
    let l = line(".")
    let c = col(".")
    keepp %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfun

" Nerd Tree
Plug 'scrooloose/nerdtree'
" Surround for paren completion
Plug 'tpope/vim-surround'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
