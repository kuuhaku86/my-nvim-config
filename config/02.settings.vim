let mapleader=","

filetype plugin on

set history=1000
set undolevels=1000

set hidden
set nowrap
set ignorecase
set showmatch

set hlsearch
set incsearch

set visualbell
set noerrorbells

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start

set nobackup
set noswapfile

set mouse=a

set laststatus=2
set t_Co=256
syntax on

"use relative lines unless focus lost
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:indentLine_color_term = 68
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceChar = '·'

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

set cmdheight=2
set updatetime=3000
set shortmess+=c
set signcolumn=yes
set clipboard=unnamedplus

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:auto_save = 1  " enable AutoSave on Vim startup

" Color Scheme
" let g:molokai_original = 1
" let g:rehash256 = 1
" let g:onedark_hide_endofbuffer = 0
" let g:onedark_termcolors = 256
" let g:onedark_terminal_italics = 0
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" syntax on
" colorscheme onedark
let g:airline_theme='one'
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif


set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
" hi Normal ctermbg=16 guibg=#000000
" hi LineNr ctermbg=16 guibg=#000000
hi Normal guibg=NONE ctermbg=NONE
