""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: vimrc                                                         "
"                                                                            "
" Sections:                                                                  "
" 	00. Vundle Plugins
"   01. General ................. General Vim behavior                       "
"   04. Vim UI .................. User interface behavior                    "
"   05. Text Formatting/Layout .. Text, tab, indentation related             "
"   06. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 00. Vundle Plugins                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All plugins should be added here
Plugin 'Chiel92/vim-autoformat'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'zxqfl/tabnine-vim'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

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
set tabstop=2
set shiftwidth=2

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

" Tab commands
nmap <silent> th :tabp<CR>
nmap <silent> tl :tabn<CR>
nmap <silent> tn :tab sp<CR>
nmap <silent> tc :tabclose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
nmap <silent> <leader>t :NERDTreeToggle<CR>

" Remove WhiteSpace
nmap <silent> <leader>fw :FixWhitespace<CR>

" escape from search
nmap <silent> <leader>/ :nohlsearch<CR>

" Show changes in the current buffer
" map <C-c> :w !diff % -<CR>


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
