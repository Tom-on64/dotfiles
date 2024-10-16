let mapleader=' '

" Config
set hlsearch " Search highlight
set incsearch " Incremental Search
set clipboard=unnamedplus " Use system clipboard (paste only)
set nowrap " No text wrap
set mouse=a " Use mouse
set cursorline

" 4 space tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

set nocompatible 
syntax on " Syntax highlighting
set encoding=utf-8
set number " Line numbers
set wildmode=longest,list,full " Autocomplete on ^n
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set splitbelow splitright " Split pos by default (^w v/h to split)

" Remaps
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

map <leader>t :tabnew<CR>:e 
map <leader>T :tabclose<CR>

" Use S for global replace
nnoremap S :%s//g<Left><Left> 
map <S-Insert> <C-i>

vnoremap y "+y

" Theme
color packet

" Status line
highlight Status ctermbg=8 ctermfg=2
highlight Status2 ctermbg=235 ctermfg=2

set laststatus=2
set statusline=\ 
set statusline+=%m\         " Modified? 
set statusline+=%.20f\      " Filename (up to 20 chars)
set statusline+=%y\         " Filetype
set statusline+=%=          " Split into second half
set statusline+=%#Status2#  " Set different colors
set statusline+=\ Char:\    " Character info
set statusline+=%b\ 0x%B    " ASCII Value (decimal and hex)
set statusline+=\ \|\       " Splitter
set statusline+=%l:%c\      " Row and column number

" Plugins
call plug#begin()
Plug 'fladson/vim-kitty'    " Syntax highlighting for Kitty Config
Plug 'dense-analysis/ale'   " Linter
call plug#end()

" ALE config
let g:ale_sign_error="! "
let g:ale_sign_warning="? "
let g:ale_sign_column_always = 1

" TODO: Fix ALE to work with kern and assembly, etc.
let g:ale_enabled = 0

