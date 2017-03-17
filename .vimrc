" Isaac Bowen
" .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required


au BufNewFile,BufRead *.tpl :set ft=php


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
" End configuration, makes the plugins available
call vundle#end()

" The point is to learn vim, right?
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap {<CR> {<CR>}<Esc>ko

" Tying shift is hard
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Relative numbers let you just around
" faster, as well as know how many lines
" you want to yank or delete
set number
set relativenumber

" set cursorline
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" The escape key is really far away!
imap jj <ESC>

" So we can move up and down lines correctly
nnoremap j gj
nnoremap k gk


" We have to have syntax highlighting!
syntax enable

" Make search work correctly
set ignorecase
set smartcase

" Highlight search matches and progress to the next one
set hlsearch
set incsearch

" Clear the last search highlighting by pressing ENTER
nnoremap <CR> :noh<CR><CR>

set backspace=indent,eol,start

" Why do you need so many commands to make tabs
" work correctly?  
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
" Spaces are *always* better, but Makefiles require tabs...
" This lets us use Shift+Tab to insert a tab 
inoremap <S-Tab> <C-V><Tab>

set showmode
set showcmd
"  set cursorline

" Highlight matching braces
set showmatch

" Really not a fan of all the error noises
set noerrorbells
set novisualbell

" We use version control...
" and I'm not a fan of those swap file error messages
set noswapfile
set nobackup

filetype indent on

map <C-I> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>
imap <C-I> <c-o>:py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

"noremap <C-K> :pyf /usr/share/vim/addons/syntax/clang-format-3.7.py<cr>
"imap <C-K> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format-3.7.py<cr>

" Automatically reload the vimrc when its changed
autocmd bufwritepost vimrc source $MYVIMRC

" Google's got me with that 80 col limit
" set textwidth=80
"set colorcolumn=+1

" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" set list

" More natural location for new splits
set splitbelow
set splitright

" Easier split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

set foldmethod=indent
set foldlevelstart=20
"" Fold the current block with space, because its so common
nnoremap <Space> za

" Make yank use the system clipboard, so we can copy and paste to/from vim
" NOTE: I had to run "apt install vim-gui-common" on my system to get this to work
" Run "vim --version" to see if you have the xterm_clipboard feature
set clipboard=unnamedplus

" Open NERDTreee on startup
" autocmd vimenter * NERDTree
" Because I don't want to start with my cursor in the NerdTree window
autocmd VimEnter * wincmd p
" Map opening of NERDTreee to Ctrl + N
map <C-n> :NERDTreeToggle<CR>
" Close vim if nerdtree is the only thing still open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" If we're using python, let's use 4 spaces (everyone's doing it...)
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

vnoremap <silent> # :s#^#\##<cr>:noh<cr>
vnoremap <silent> -# :s#^\###<cr>:noh<cr>

execute pathogen#infect()
call pathogen#helptags()

" Is it the best? probably not
" Needs to be loaded AFTER the pathogen call
colo Monokai

