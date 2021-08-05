syntax on
set number
set mouse=a "hace que podamos interactuar con el mouse y vim
set noerrorbells "quitar el sonido de error
set sw=2 "indentaciones de 2 espacios
set expandtab
set smartindent "para indentacion inteligente con python
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase "ignora case sentitive en busquedas
set clipboard=unnamedplus
set encoding=utf8
set guifont=ProggyCleanTT\ 12
"set cursorline
"set termguicolors
"set colorcolumn=120

"inicio de configuracion de plugins 
"need to install vim-plug manager 
call plug#begin('~/.vim/plugged')
"general purpose plugins:
"Plug 'vim-scripts/AutoComplPop'
"color schemes
Plug 'morhetz/gruvbox'
Plug 'rktjmp/lush.nvim'
Plug 'nanotech/jellybeans.vim' "call jellybeans
Plug 'bluz71/vim-moonfly-colors' "call moonfly
Plug 'fxn/vim-monochrome' "call monochrome
Plug 'nn1ks/vim-darkspace' "call darkspace
"python plugins
Plug 'hdima/python-syntax'

call plug#end()
set background=dark
set termguicolors
colorscheme darkspace
