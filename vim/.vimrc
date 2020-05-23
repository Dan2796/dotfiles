set nocompatible
filetype on

" Remap
inoremap jk <Esc>

" Relative line jump global for counts
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Switch off the auto-indenting
set nocindent
set nosmartindent
set noautoindent

filetype indent off
filetype plugin indent off

" Tabbing set to 2 spaces
set shiftwidth=2
set tabstop=2
set expandtab

" Softwrap
set wrap
set linebreak
set tw=0 " Remove default softwrap at 80 lines
set showbreak=+++ " wrap broken-line prefix

set showmatch " highlight matching brace
set colorcolumn=80 " red bar for 80 characters
set hlsearch " highlight all search results
set smartcase " enable smart-case search
set ignorecase " always case-insensitive
set ignorecase " always case-insensitive
set incsearch " searches for strings incrementally

set nu rnu 

" Save marks between files
set viminfo='100,f1

" Fold method
set foldmethod=marker

" Map localleader to comma
let maplocalleader = ','

" Advanced
set ruler " Show info. at bottom

set undolevels=1000

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' " NERDTree

Plug 'Yggdroot/indentLine' " For indentation lines

Plug 'tpope/vim-surround' " For tagging
Plug 'tpope/vim-fugitive' " Git inside vim

Plug 'junegunn/goyo.vim' " Goyo

Plug 'jalvesaq/Nvim-R' " Nvim R
Plug 'jalvesaq/vimcmdline' " Nvim-R for Python
Plug 'vim-pandoc/vim-pandoc-syntax' " Markdown syntax
Plug 'vim-pandoc/vim-rmarkdown' " Markdown stuff
Plug 'jalvesaq/vim-rmarkdown' " RMarkdown buffer thing

Plug 'morhetz/gruvbox' " Gruv-box theme

Plug 'lervag/vimtex' " For tex stuff e.g. autocite hopefully

call plug#end()

filetype plugin indent on 

let g:pandoc#modules#disabled = ["keyboard"] " disabling j map from vim-pandoc

" Sorting colour for goyo quit
autocmd! User GoyoLeave nested set t_Co=256 | colorscheme gruvbox | :hi Normal guibg=NONE ctermbg=NONE
" Relative numbers for Goyo
autocmd! User GoyoEnter nested set nu rnu

" Color scheme set as gruvbox from plugin
set t_Co=256
syntax on
colorscheme gruvbox
set background=dark

" And make transparent
:hi Normal guibg=NONE ctermbg=NONE
            
" Spelling / conceal in latex and md
autocmd Filetype tex,latex set spell 
let g:indentLine_setConceal = 0
autocmd Filetype markdown set spell  


