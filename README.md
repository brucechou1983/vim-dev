# single VIM development environment for multiple languages
### usage
1. Clone this repo

    ```
    git clone https://github.com/brucechou1983/vim-dev ~/.vim
    ```
2. Update submodules

    ```
    cd ~/.vim/vim-dev-lang/
    git checkout master && git submodule init && git submodule update
    ```
3. Checkout specific language, ex:

    ```
    git checkout python
    ```
4. Backup you .vimrc and link the new one

    ```
    ln -s ~/.vim/vimrc ~/.vimrc
    ```
5. In vim, execute: `:PluginInstall`

### how to modify

For shared settings and plugins, modify `vimrc` in this repo.

For language-specific setting and plugins, modify `vimrc` and `vimrc.plugin` in [vim-dev-lang](https://github.com/brucechou1983/vim-dev-lang).

### submodules
1. [vim-dev-lang](https://github.com/brucechou1983/vim-dev-lang)
2. [Vundle](https://github.com/VundleVim/Vundle.vim)
