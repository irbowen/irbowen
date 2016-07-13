" Isaac Bowen
" .vimrc

" The point is to learn vim, right?
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" I'm not about VI
set nocompatible

" Relative numbers let you just around
" faster, as well as know how many lines
" you want to yank or delete
set number
set relativenumber

" The escape key is really far away!
imap jj <ESC>

" So we can move up and down lines correctly
nnoremap j gj
nnoremap k gk

" Is it the best? probably not
colo torte

" I was using desert, but delek plays
" nicer with my redshifted display
" colo desert

" We have to have syntax highlighting!
syntax enable

" Highlight search matches and progress to the next one
set hlsearch
set incsearch
" Press Space to turn off highlighting and clear any message already displayed                                                                                                                                                                                             
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>  

" Clang autoformat
" noremap <C-K> :pyf /usr/lib/clang-format/clang-format.py<CR>                                                                                                                                                                                                               
" inoremap <C-K> <C-O>:pyf /usr/lib/clang-format/clang-format.py<CR>                                                                                                                                                                                                         

" Make search work correctly
set ignorecase
set smartcase

set backspace=indent,eol,start

" Why do you need so many commands to make tabs
" work correctly?  
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
" Spaces are *always* better, but Makefiles require tabs...
" This lets us use Shift+Tab to insert a tab 
inoremap <S-Tab> <C-V><Tab>

set showmode
set showcmd

set cursorline
set showmatch

" Really not a fan of all the error noises
set noerrorbells
set novisualbell

" We use version control...
" and I'm not a fan of those swap file error messages
set noswapfile
set nobackup

filetype indent on

" Automatically reload the vimrc when its changed
autocmd bufwritepost vimrc source $MYVIMRC

" Google's got me with that 80 col limit
" set textwidth=80
" set colorcolumn=+1

" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" set list

