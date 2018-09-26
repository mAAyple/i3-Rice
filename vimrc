"Runtime file for pathogen"
runtime bundle/vim-pathogen/autoload/pathogen.vim
"Start"
set nocompatible
" Helps force plugins to load correctly when it is turned back on below
filetype off
" TODO: Load plugins here (pathogen or vundle)
"VIM-PLUG"
call plug#begin('~/.vim/plugged')
"Fuzzy Finder:"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"LighPath"
Plug 'itchyny/lightline.vim'
"Cursor Stuff"
Plug 'terryma/vim-multiple-cursors'
call plug#end()
"PATH"
execute pathogen#infect()


syntax on
" For plugins to load correctly
filetype plugin indent on

"......................"
" My Use case settings "
"                      "
"                      "
"                      "
""""""""""""""""""""""""
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
set autoindent
set wildmenu
set showmatch
set noshowmode
"......................"
"       no arrows      "
""""""""""""""""""""""""
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"......................"
"         folds        "
""""""""""""""""""""""""
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Security
set modelines=0
" Show line numbers
set number
" Show file stats
set ruler
" Blink cursor on error instead of beeping (grr)
set visualbell
" Encoding
set encoding=utf-8
" Whitespace
set wrap
set noshiftround
" Move up/down editor lines
nnoremap j gj
nnoremap k gk
" Allow hidden buffers
set hidden
" Status bar
set laststatus=2
" set showmode
set showcmd
