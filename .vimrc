""" edit
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " use spaces instead of TAB
set autoindent          " copy indent from current line when starting new line
set smartindent         " even better autoindent

""" display
colorscheme badwolf     " schemes: badwolf, elflord, murphy, slate
syntax enable           " enable syntax processing
filetype indent on      " load filetype-specific indent files
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wrap                " wrap lines
set wildmenu            " visual autocomplete for command menu
set lazydraw            " redraw only when we need to
set showmatch           " highlight matching [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show cursor line/col numbers on the statusline
set vb t_vb=            " disable both audio and visual bells

""" actions
inoremap jk <esc>       " jk is escape

""" search
set incsearch           " search as charaters are entered
set hlsearch            " highlight matches
nnoremap <CR> :nohlsearch<CR><CR>   " turn off search highlighting with <CR> (carriage-return)

""" movement
set mouse=a
" remap QUERTY to Dvorak ~AND~ move the locations
noremap h h             " (left) dvorak h = querty h, but in a different spot
noremap c k             " (up) dvorak c
noremap t j             " (down) dvorak t
noremap l n             " (right) dvorak l
