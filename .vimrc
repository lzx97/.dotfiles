" Not trying to be vi compatible
set nocompatible

" Enable syntax highlightening
syntax enable

" Force tab size to 2 spaces
set tabstop=2
set softtabstop=2
set expandtab

" Display line numbers
set number

" Display file stat
set ruler

" Show current mode
set showmode
" Show command
set showcmd

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

" Plugin configurations for vim-plug
" Plugins will be downloaded under the directory specified below.
call plug#begin('~/.vim/plugged')

" Nerd Tree
Plug 'scrooloose/nerdtree'
" Surround for paren completion
Plug 'tpope/vim-surround'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
