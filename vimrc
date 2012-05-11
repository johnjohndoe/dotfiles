" VIM settings
" To read more about an individual setting type :help command
" ----------------------------------------------------------------------------


set nocompatible                      " Use vim settings, not vi

syntax on                             " Enable syntax highlighting

set esckeys                           " Allow cursor keys in insert mode
set nobackup                          " No backup when overwritting a file
set nowritebackup                     " No backup when overwritting a file
set noerrorbells                      " Mute error sounds
set visualbell t_vb=                  " Disable all bells
set ttyfast                           " Optimize for fast terminal connections
set encoding=utf-8 nobomb             " Use UTF-8 without BOM
set binary                            " Must be enabled for noeol
set noeol                             " Avoid empty newlines at the end of files
set background=dark                   " Background color
set cmdheight=2                       " Command line height
set title                             " Show file name in title bar
set ruler                             " Show cursor position on bar
set more                              " Use more prompt
set autoread                          " Watch for file changes
set showmode                          " Show mode all the time
set showcmd                           " Show incomplete command while typing
set backspace=indent,eol,start        " Enable backspacing over everything in insert mode
set mouse=a                           " Always show mouse cursor
set nowrap                            " Disable wrapping globally
set number                            " Enable line numbers
set numberwidth=5                     " Column width for line numbers
filetype plugin on                    " Enable filetype plugin to load settings from ~/.vim/after/ftplugin/language.vim
filetype plugin indent on             " Enable language specific indenting




" ----------------------------------------------------------------------------
" Tab and spaces
" ----------------------------------------------------------------------------
" Tab completion options
" Only complete to the longest unambigious match
" Show a menu
set completeopt=longest,menu
set wildmenu                          " Enable tab completion for the menu
set wildmode=list:longest,list:full   " Enable wildmode
set wildignore+=*.o,*~,.lo            " Ignore object files

set autoindent smartindent
set smarttab                          " Tab and backspace are smart
set tabstop=4                         " Tab width
set shiftwidth=4                      " Indentation width
set expandtab                         " Insert spaces when tab is pressed
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_  " Substitute invisible characters
set list                              " Show invisible characters
set softtabstop=4                     " Number of spaces



" ----------------------------------------------------------------------------
" Search
" ----------------------------------------------------------------------------
set gdefault                          " Add the g flag to search/replace by default
set ignorecase                        " Search ignoring case
set smartcase                         " Respect mixed case expressions
set incsearch                         " Incremental search
set hlsearch                          " Highlight the search

set showmatch                         " Highlight matching braces
set matchpairs+=<:>                   " Add < and > to match pairs
set diffopt=filler,iwhite             " Ignore all whitespace and sync