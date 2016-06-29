set nu
set hidden
" set nocompatible
set history=1000000
set autoindent
set smartindent
set hlsearch
set incsearch
set cindent
set cursorline
execute pathogen#infect()
syntax enable
"let g:solarized_termcolors=256
set background=dark
"colorscheme solarized

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
:map <F12> :setlocal spell! spelllang=en_us<CR>
" I read this on some forum, that to map the make to an F key"
:map <F11> :make <CR>
" just thought this up, mapping writing to a file to F10 so I don't type it
" often"
:map <F10> :w <CR>
" to get rid of the annoying 'Hit Enter to go back' message when compiling,
" this simply increases the height of the command window to 2"
set cmdheight=1
" to easily navigate to other windows"
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" close a window
map <C-q> <C-w>q 
nnoremap , :
inoremap aa <Esc>
inoremap jj <Esc>

" to get persistent undo facility
set undofile 
set undodir=$HOME/.vim/undodidr
"set tabstop=8
"set expandtab
"set shiftwidth=4
"set softtabstop=4
