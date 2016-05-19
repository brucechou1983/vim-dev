"Keep this to prevent from possible system bugs
set nocompatible

"Vundle settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'janko-m/vim-test'
source ~/.vim/vim-dev-lang/vimrc.plugin
call vundle#end()
filetype plugin indent on

"Leader key
let mapleader = ","

"UTF8 support
set encoding=utf-8

"Syntax
colorscheme Tomorrow-Night
set background=light
set laststatus=2
set number
set ruler
set cursorline
set cursorcolumn
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
nnoremap <C-H> gT
nnoremap <C-L> gt
nnoremap ; :nohlsearch<CR>
nnoremap 00 <C-$>

" - mode switch
inoremap jk <Esc>

" - copy to clipboard
vnoremap cy "+y

" - comment
autocmd FileType c,cpp,java,javascript,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType dockerfile       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"NERDTree
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
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

"GitGutter
set updatetime=250

"Backup
set backup
set backupdir=/tmp
set directory=/tmp

"Font
set guifont=Source\ Code\ Pro\ for\ Powerline:h18

"Lightline 
source ~/.vim/.lightline.vim

"Language specific
source ~/.vim/vim-dev-lang/vimrc
