
set nocompatible

set number
set relativenumber

" The escape key is really far away!
imap jj <ESC>
" So we can move up an ddown lines correctly
nnoremap j gj
nnoremap k gk

" Is it the best? probably not
colo desert

syntax enable

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

set showcmd
set cursorline

set noswapfile

filetype indent on

