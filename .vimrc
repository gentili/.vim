" Add the virtualenv's site-packages to vim path
""py << EOF
""import os.path
""import sys
""import vim
""if 'VIRTUAL_ENV' in os.environ:
""	project_base_dir = os.environ['VIRTUAL_ENV']
""	sys.path.insert(0, project_base_dir)
""	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
""	execfile(activate_this, dict(__file__=activate_this))
""        print "virtualenv is os.environ!"
""EOF

" rope stuff
let $PYTHONPATH .= ':/Users/gentili/.vim/bundle/ropevim'
let $PYTHONPATH .= ':/Users/gentili/.vim/bundle/ropemode'
let $PYTHONPATH .= ':/Users/gentili/.vim/bundle/rope'

" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files

" vim
set nobackup
set nocp
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
