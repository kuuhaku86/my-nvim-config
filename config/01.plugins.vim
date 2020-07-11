if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.local/share/nvim/plugged')
  " Lint
  Plug 'w0rp/ale'

  " Include
  Plug 'Shougo/neoinclude.vim'
  Plug 'jsfaint/coc-neoinclude'
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
  Plug 'galooshi/vim-import-js', { 'do': 'npm install -g import-js' }

  " Add or remove your plugins here like this:
  Plug 'HerringtonDarkholme/yats.vim'

  " Theme
  Plug 'dracula/vim'

  " Layout
  " Plug 'airblade/vim-gitgutter'
  Plug 'bling/vim-airline'
  Plug 'bling/vim-bufferline'
  Plug 'Yggdroot/indentLine'

  "Typescript Plugins
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }

  " 'ide' stuff
  Plug 'kien/ctrlp.vim'
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'dyng/ctrlsf.vim'
  Plug 'vimwiki/vimwiki'
  Plug 'scrooloose/nerdtree'

  Plug 'mbbill/undotree'

  Plug 'SirVer/ultisnips' | Plug 'phux/vim-snippets'

  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'

  Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()', 'for': 'php'}
  Plug 'phpactor/ncm2-phpactor', {'for': 'php'}
  Plug 'ncm2/ncm2-ultisnips'
  " Plug 'SirVer/ultisnips' should have been already added in previous
  " section
  Plug 'StanAngeloff/php.vim', {'for': 'php'}
  Plug 'w0rp/ale'

  Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}

  Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}

  Plug 'tpope/vim-fugitive'

  Plug '907th/vim-auto-save'
call plug#end()
