" vim
set nobackup
set nocp
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General syntax, colour and code

Plugin 'Valloric/YouCompleteMe'

Plugin 'rdnetto/YCM-Generator'

Plugin 'vim-scripts/Colour-Sampler-Pack'

Plugin 'vim-scripts/ScrollColors'

Plugin 'vim-syntastic/syntastic'

" Python stuff
Plugin 'vim-scripts/pep8'

Plugin 'fs111/pydoc.vim'

Plugin 'jmcantrell/vim-virtualenv'

Plugin 'python-rope/ropevim'

Plugin 'python-rope/ropemode'

Plugin 'python-rope/rope'

" Filetypes

Plugin 'pearofducks/ansible-vim'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set statusline=[%{virtualenv#statusline()}]
set statusline=[%l,%c,%p%%]
set statusline+=%t
set ls=2

" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab

" visual
highlight Normal ctermbg=black
set background=dark
" set cursorline
set t_Co=256

" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins

" colorpack
colorscheme elflord

" pep8
let g:pep8_map='<leader>8'

" virtual env
let g:virtualenv_auto_activate = 1

" ycm
let g:ycm_confirm_extra_conf = 0
