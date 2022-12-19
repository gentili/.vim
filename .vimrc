" vim
set nobackup
set nocp
filetype off

if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General syntax, colour and code

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/ScrollColors'

Plugin 'tpope/vim-unimpaired'

" Python stuff
Plugin 'dense-analysis/ale'

# Plugin 'lambdalisue/vim-pyenv'
# Plugin 'jmcantrell/vim-virtualenv'

Plugin 'nvie/vim-flake8'

Plugin 'psf/black'

Plugin 'fs111/pydoc.vim'

Plugin 'python-rope/ropevim'

Plugin 'python-rope/ropemode'

Plugin 'python-rope/rope'

Plugin 'Vimjas/vim-python-pep8-indent'

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
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

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
autocmd FileType python map <buffer> <leader>8 :call Flake8()<CR>
autocmd BufWritePre *.py execute ':Black'
" let g:syntastic_python_flake8_args='--ignore E501,E124,W503'

" virtual env
let g:virtualenv_auto_activate = 1

" ycm
let g:ycm_confirm_extra_conf = 0
