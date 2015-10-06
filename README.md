My .vim
=======

My personal .vim directory

Installation notes
------------------

```sh
cd ~
git clone 
ln -s /home/gentili/.vim/.vimrc
cd .vim
git submodule update --init --recursive
cd ~/.vim/bundle/rope
sudo python setup.py install
cd ~/.vim/bundle/ropemode
sudo python setup.py install
cd ~/.vim/bundle/ropevim
sudo python setup.py install
```
