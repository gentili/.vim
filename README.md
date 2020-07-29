My .vim
=======

My personal .vim directory

Prerequisites
-------------
*  brew install cmake
*  brew install vim

Installation notes
------------------

```sh
cd ~
ln -s ~/.vim/.vimrc
ln -s ~/.vim/.flake8
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

Update notes
------------

```sh
vim +PluginUpdatel
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
