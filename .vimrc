call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

:set mouse=n
:set ttymouse=xterm2

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
map <S-q> :tabn<CR>
map <S-Tab> :tabp<CR>

set number " show line number                                                                                           
set tabstop=2 " set display width of tab; 1 tab = x space with                                                           
set expandtab " transform tab to x space (x is tabstop)                                                               
set autoindent " auto indent; new line with number of space at the beginning same as previous                                                                      
set shiftwidth=2 " number of space append to lines when type >> 
