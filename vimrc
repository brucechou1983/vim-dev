"Keep this to prevent from possible system bugs
set nocompatible

"Vundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
source ~/.vim/vim-dev-lang/vimrc.plugin
call vundle#end()
filetype plugin indent on

"Leader key
let mapleader = ","

"UTF8 support
set encoding=utf-8

"Syntax
set background=light
set laststatus=2
set statusline=%n\ %F\ %m%r\%=%c-%l/%L
set number
set ruler
syntax on

"Search
set smartcase
set showmatch
set hlsearch
set incsearch

"Indent
set tabstop=4
set shiftwidth=4
set expandtab

"Keyboard control
set backspace=2
set scrolloff=5

"split window control
set splitbelow
set splitright

"Key maps
" - navigate
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ; :nohlsearch<CR>

" - mode switch
inoremap jk <Esc>

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
map <C-n> :NERDTreeToggle<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_math = 1

"Backup
set backup
set backupdir=/tmp
set directory=/tmp

"Font
set guifont=Source\ Code\ Pro\ 18

"Language specific
source ~/.vim/vim-dev-lang/vimrc
