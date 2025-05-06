let mapleader=' '

" Config
set hlsearch " Search highlight
set incsearch " Incremental Search
set clipboard=unnamedplus " Use X11's CLIPBOARD
set nowrap " No text wrap
set mouse=a " Use mouse
set cursorline

" Replace all NBSPs with normal spaces
autocmd BufWritePre *.c,*.h silent! %s/\u00A0/ /ge

" Tabs
set tabstop=8 " A '\t' drawn as 8 spaces
set shiftwidth=8 " 1 indent level is 8 spaces
set noexpandtab	" Don't expand tabs into spaces
set autoindent " Automatically indent

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

" Theme
color packet
set notermguicolors " Use 256 color mode

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

