""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: vimrc                                                         "
"                                                                            "
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   04. Vim UI .................. User interface behavior                    "
"   05. Text Formatting/Layout .. Text, tab, indentation related             "
"   06. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " get rid of Vi compatibility mode. SET FIRST!
let mapleader = ","
set backspace=2   " Backspace deletes like most programs in insert mode
set noswapfile
set colorcolumn=80
set spell
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Theme/Colors                                                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable             " enable syntax highlighting (previously syntax on).

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nohlsearch            " Don't continue to highlight searched phrases.
set hlsearch
set ignorecase            " Make searches case-insensitive.
set showmatch
set smartcase
inoremap jk <ESC> 				" Switching from insert mode to normal mode
vmap <C-c> "+y						" Enable copying to clipboard using `CTRL + c`
" nnoremap ; : " remapping ; to :
set backspace=2   " Backspace deletes like most programs in insert mode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set smartindent           " automatically insert one extra level of indentation
set nowrap                " don't wrap text
set number                " show line numbers
set ruler                 " Always show info along bottom.
map <C-e> :FixWhitespace<CR> " Remove WhiteSpace

" Navigation split
nnoremap <Leader>f <C-W><bar>
nnoremap <Leader>r <C-W>=
nnoremap <Leader>v <C-W><C-V>
nnoremap <Leader>w <C-W><C-H>
nnoremap <Leader>e <C-W><C-L>
set splitright

" Buffer commands
nmap <silent> <C-U> :tabp<CR>
nmap <silent> <C-I> :tabn<CR>
nmap <silent> <C-N> :tab sp<CR>
nmap <silent> <C-C> :tabclose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Show changes in the current buffer
map <C-c> :w !diff % -<CR>


" moving lines up and down
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
"
" " Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
"
" " Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
