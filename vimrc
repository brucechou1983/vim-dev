"Key maps
imap jk <Esc>

"Plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Shared plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'

"Language-specific plugins
source ~/.vim/vim-dev-lang/vimrc.plugin
call vundle#end()

"Syntax
filetype plugin indent on
set background=light
syntax on

"Font
set guifont=Source\ Code\ Pro\ 18

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

"Backup
set backup
set backupdir=/tmp
set directory=/tmp

"Language specific
source ~/.vim/vim-dev-lang/vimrc
