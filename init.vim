syntax on
set number
set mouse=a "hace que podamos interactuar con el mouse y vim
set noerrorbells "quitar el sonido de error
set sw=4 "indentaciones de 2 espacios
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
set cursorline
"set termguicolors
"set colorcolumn=120
let mapleader = ' '
"inicio de configuracion de plugins 
"need to install vim-plug manager 
call plug#begin('~/.vim/plugged')
"language server
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' } "path: $HOME/.vim/plugged/YouCompleteMe
"install new compiler: ./install.py <CPMLETER_NAME> ex. ./install
"--clang-completer
"general purpose plugins:
"Plug 'vim-scripts/AutoComplPop'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
"color schemes DARK
Plug 'morhetz/gruvbox'
Plug 'rktjmp/lush.nvim'
Plug 'nanotech/jellybeans.vim' "call jellybeans
Plug 'bluz71/vim-moonfly-colors' "call moonfly
Plug 'fxn/vim-monochrome' "call monochrome
Plug 'nn1ks/vim-darkspace' "call darkspacei

"python plugins
Plug 'hdima/python-syntax'
"navigation
Plug 'preservim/nerdtree'
call plug#end()
colorscheme jellybeans

let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

"Nerd commenter
nmap <C-_> <Plug>NERDCommenterToggle "comment whole line ctrl+_
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv "to comment multiple lines in visual mode

"tabs (airline)
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

"util snippets configuration
let g:UtilSnipsSnippetDirectories=['/utilsnippets']
let g:UtilSnipsExpandTrigger='<tab>'
let g:UtilSnipsJumpForwardTrigger='<tab>'
let g:UtilSnipsJumpBackwardTrigger='<s-tab>'

"-------PROGRAMMING LANGUAGES CONFIGURATION: 
"C++ need to install ccls language server dependig linux distro
"
