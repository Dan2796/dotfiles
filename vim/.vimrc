if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Trying to make it use true colours
if (has("termguicolors"))
  set termguicolors
endif

set nocompatible
filetype on

" Remap
inoremap jk <Esc>
nmap <Space>c  : w <enter> : !pdflatex % <enter>

" Relative line jump global for counts
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Switch off the auto-indenting
set nocindent
set nosmartindent
set noautoindent

filetype plugin on

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
autocmd Filetype r set foldmethod=marker  
"set foldmethod=marker
set foldmethod=syntax

" Map localleader to comma
let maplocalleader = ','

" Shortcut for running python
nnoremap <F5> <Esc>:w<CR>:!python %<CR>

" Advanced
set ruler " Show info. at bottom

set undolevels=1000

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' " NERDTree
"Plug 'spolu/dwm.vi' " For dwm windows in vim!

Plug 'Yggdroot/indentLine' " For indentation lines

Plug 'tpope/vim-surround' " For tagging
Plug 'tpope/vim-fugitive' " Git inside vim

Plug 'junegunn/goyo.vim' " Goyo
Plug 'junegunn/limelight.vim' " Focussed writing - need colour sourt

Plug 'vim-airline/vim-airline' " Vim airline for pretty bar thing

Plug 'jalvesaq/Nvim-R' " Nvim R
Plug 'jalvesaq/vimcmdline' " Nvim-R for Python
Plug 'vim-pandoc/vim-pandoc-syntax' " Markdown syntax
Plug 'vim-pandoc/vim-rmarkdown' " Other markdown stuff
Plug 'morhetz/gruvbox' " Gruv-box theme
Plug 'arcticicestudio/nord-vim' " Nord theme
Plug 'jnurmine/Zenburn' " Zen theme
Plug 'lervag/vimtex' " For tex stuff e.g. autocite hopefully
Plug 'maverickg/stan.vim' " For Stan syntax highlighting
Plug 'chrisbra/csv.vim' " For CSV viewing
Plug 'vim-latex/vim-latex' " For full vimtex
Plug 'mattn/emmet-vim' " Autocomplete in html 

call plug#end()

let g:pandoc#modules#disabled = ["keyboard"] " disabling j map from vim-pandoc

" Sorting colour for goyo quit
autocmd! User GoyoLeave nested set t_Co=256 | colorscheme nord | :hi Normal guibg=NONE ctermbg=NONE
" Relative numbers for Goyo
autocmd! User GoyoEnter nested set nu rnu
" keybinding for Goyo
"nnoremap <Leader>gy :Goyo<CR> 
nnoremap gy :Goyo<CR> 
autocmd! User GoyoEnter nested Goyo 80

" Color scheme set as gruvbox from plugin
set t_Co=256
syntax on
colorscheme nord
"set background=dark

" And make transparent
:hi Normal guibg=NONE ctermbg=NONE
            
" Spelling / conceal in latex and md
autocmd Filetype tex,latex set spell 
let g:indentLine_setConceal = 0
autocmd Filetype markdown set spell  

" Turn of the underscore change in R
let R_assign = 0

" Flavour for tex plugin
let g:tex_flavor = 'latex'
   
" Run R in tmux
"let R_external_term = 1

" Buffer Settings:
" Airline buffer show
let g:airline#extensions#tabline#enabled = 1
" Allow hidden buffers
set hidden
" Tab for buffer wildcards
set wildchar=<Tab> wildmenu wildmode=full

" Calcurse md syntax from Luke Smith
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/tmp/.calcurse/notes* set filetype=markdown

" netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro' 
"au BufWinEnter * set number
nmap #ee :Explore<CR> 
nmap #ts :Texplore<CR> 
nmap #vs :Vexplore<CR> 
nmap #ss :Sexplore<CR> 
