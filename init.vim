syntax on
set number
set mouse=a "interaction with mouse and terminal components 
set noerrorbells "remove error sound that are anoying
set sw=4 "4 spaces indentations for standard python and other languages
set expandtab
set smartindent "intelligent python indentation to avoid errors
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase "ignore case sentitive searches
set clipboard=unnamedplus
set encoding=utf8
"enable folding based in indents
set foldmethod=indent
set foldlevel=99
let mapleader = ' '
"need to install vim-plug manager 
call plug#begin('~/.vim/plugged')
    
    "general purpose plugins:
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'luochen1990/rainbow'
    Plug 'ap/vim-css-color'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'voldikss/vim-floaterm'
    Plug 'preservim/nerdtree'
    Plug 'tmhedberg/SimpylFold'   
    "color schemes DARK
    Plug 'morhetz/gruvbox'
    Plug 'rktjmp/lush.nvim'
    Plug 'nanotech/jellybeans.vim' "call jellybeans
    Plug 'bluz71/vim-moonfly-colors' "call moonfly
    Plug 'fxn/vim-monochrome' "call monochrome
    Plug 'nn1ks/vim-darkspace' "call darkspacei

    "python plugins
    Plug 'hdima/python-syntax'

    if has('nvim')
        "built in lsp for nvim
        Plug 'neovim/nvim-lspconfig'
        Plug 'hrsh7th/nvim-compe'
    endif
call plug#end()
colorscheme jellybeans

"general purpose mapping keys
"visual mode
vnoremap < <gv "make indentation to the left
vnoremap > >gv "make indentantion to the right

"general purpose mapping for insert mode: 
inoremap <C-s> <Esc>:update<cr>gi "control s saving behaivior

"mapping keys for normal mode: 
nnoremap <C-s> :update<cr>

let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

"Nerd commenter
nmap <C-_> <Plug>NERDCommenterToggle "comment whole line ctrl+_
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv "to comment multiple lines in visual mode

"tabs (airline)
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader><Left> :bp<CR>
nmap <leader><Right> :bn<CR>
nmap <C-w> :bd<CR>

"float term
let g:floaterm_keymap_new = '<F7>'
let g:floaterm_keymap_toggle = '<F12>'

"folding configurations
noremap <leader><down> za


"operative system validation
if has('win32') "windows
    set shell=powershell.exe
    set shellcmdflag=/c\ powershell.exe\ -NoLogo\ -NoProfile\ -NonInteractive\ -ExecutionPolicy\ RemoteSigned
    set shellpipe=|
    set shellredir=>    
endif
