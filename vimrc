set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'myusuf3/numbers.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'godlygeek/tabular'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'ekalinin/Dockerfile.vim'
source ~/.vim/vim-dev-lang/vimrc.plugin
call vundle#end()

filetype plugin indent on
set background=light

if &t_Co > 2 || has("gui_running")
    syntax on
endif

if has("win32")
    set guifont=Source_Code_Pro:h18:cANSI
else
    set guifont=Source\ Code\ Pro\ 18
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set shiftround
set autoindent
set copyindent
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set scrolloff=5
set backspace=2
set number
set ruler
set visualbell
set noerrorbells
set laststatus=2
set statusline=%n\ %F\ %m%r\%=%c-%l/%L

nnoremap ; :nohlsearch<CR>
set pastetoggle=<F2>

if has("unix")
    set backup
    set backupdir=/tmp
    set directory=/tmp
elseif has("win32")
    set backup
    set backupdir=C:\Windows\Temp
    set noswapfile
endif

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

"Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_math = 1

"External
source ~/.vim/vim-dev-lang/vimrc
