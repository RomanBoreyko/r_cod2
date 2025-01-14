sudo apt install neovim
sudo apt install python3-neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

sudo apt-get install python-dev python-pip python3-dev python3-pip

https://www.chrisatmachine.com/blog/category/neovim/01-vim-plug

mkdir ~/.cofig/nvim
cd ~/.cofig/nvim 
touch init.vim

sudo apt  install curl  # version 7.68.0-1ubuntu2.14
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
//autoload in ~/.cofig/nvim

ls autoload

mkdir ~/.config/nvim/vim-plug
touch ~/.config/nvim/vim-plug/plugins.vim

Добавьте следующее к ~/.config/nvim/vim-plug/plugins.vim

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

call plug#end()



Добавьте следующую строку в init.vim

source $HOME/.config/nvim/vim-plug/plugins.vim

:PlugStatus
:PlugInstall
:PlugUpdate
// :PlugDiff
// :PlugClean
// :PlugUngrade

