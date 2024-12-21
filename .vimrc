call plug#begin('~/.vim/plugged')

Plug 'Shougo/neocomplcache'
Plug 'scrooloose/nerdtree'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'mileszs/ack.vim'
Plug 'ap/vim-css-color'
map <F5> :NERDTreeToggle<CR>

call plug#end()
let transparent_background = 0
let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_enable_smart_case = 1 
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
inoremap <expr><TAB> pumvisible()?"\<C-n>" : "\<TAB>"

syntax on
set number
" set cursorline
colorscheme default
set bg=dark
set tabstop=4
set expandtab
set shiftwidth=4
set ai
set hlsearch
set smartindent
set encoding=utf-8
map <F4> : set nu!<BAR>set nonu?<CR>


if has('gui_running') || (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256')
    if !has('gui_running')
        let &t_Co = 256
    endif

colorscheme vim-monokai-tasty
else
   colorscheme delek
endif

if transparent_background
   highlight Normal guibg=none
   highlight Normal ctermbg=none
   highlight NonText ctermbg=none
endif

" autocomplete dropdown list colorscheme
hi Pmenu ctermfg=0 ctermbg=7 
hi PmenuSel ctermfg=7 ctermbg=4

set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on
