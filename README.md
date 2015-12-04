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

# C++ support for ubuntu
sudo apt-get install python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# C++ support for OSX
mkdir -p ~/ycm_temp/llvm_root_dir
cd ~/ycm_temp/llvm_root_dir
wget http://llvm.org/releases/3.7.0/clang+llvm-3.7.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz
xz -d clang*
mv clang/* .
cd ~/ycm_temp
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
```
