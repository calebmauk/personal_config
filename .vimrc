
set nocompatible

set noesckeys
set ttimeout
set timeoutlen=1000
set ttimeoutlen=5




"////////////// Display

set hidden
syntax on       " syntax highlighting on
let mapleader=","
colorschem elflord
set ruler
set number      " line numbers on
set title       " displays the open file's name
set mouse=a     " enables mouse scrolling/resizing
set showcmd
set showmode
set autoread
set wrap        " wrap lines
set wildmenu    " visual autocomplete for command menu
set showmatch   " highlight matching [{()}]
set vb t_vb=    " disable both audio and visual bells
set laststatus=2

filetype plugin on
filetype indent on  " load filetype-specific indent files
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP 8 Friendly

au BufReadPost *.vue set syntax=html " use html syntax highlighting for Vue files


"////////////// Search

set hlsearch    " highlight search matches
set showmatch   " highlight search matches ??
set ignorecase  " case-insensitive search
set smartcase   " case-sensitive search when query includes capitals
set incsearch   " search as charaters are entered
" :noh      removes search match highlighting

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR> 





"////////////// Code

set autoindent
set smartindent
set cindent
set smarttab
set softtabstop=4   " tab = 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab       " use spaces instead of tabs


"////////////// Editing

set backspace=indent,eol,smart  " <Bksp> editing is unrestricted
set history=1000
inoremap jk <esc>               " jk is escape

"////////////// Other
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


"////////////// Dvorak Key Bindings
" cursor movement (cthn) (like gaming)
" no h h (just changes location)
no c k
no t j
no n l

" get rid of f
no l f

" search next to m
no m n

" remap c
no f c

" :,s command
no s :
no S :

no k d
no l n
no L N

" - eol, _ bol
no - $
no _ ^

" window moement
" N nextwindow, D swapwindows
no N <C-w><C-w>
no T <C-w><C-r>
no D <C-w><C-r>

" shift navigation jumping movements for chtn
nnoremap H <C-Left>
nnoremap N <C-Right>
inoremap <A-H> <C-Left>
inoremap <A-H> <C-Right>


