My .vim
=======

My personal .vim directory

Installation notes
------------------

```sh
cd ~
ln -s ~/.vim/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
