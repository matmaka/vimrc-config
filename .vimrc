if v:version >= 900
    let &wildoptions="pum"
endif

filetype plugin indent on
syntax enable

let mapleader = "\<Space>"

set encoding=utf-8
set expandtab
set shiftwidth=8
set tabstop=8
set textwidth=80
set wildmenu
set wrap

autocmd FileType css,scss,sass,html set shiftwidth=4
autocmd FileType css,scss,sass,html set tabstop=4
        
vnoremap z "+y

nnoremap - :m -2 <ENTER>
nnoremap = :m +1 <ENTER>
nnoremap <c-u> <esc>bveU
nnoremap \ dd
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>tc :VimtexCompile<cr>
nnoremap <leader>e3 :vsplit $HOME/.config/i3/config<cr>
nnoremap <leader>ea :vsplit $HOME/.aliases<cr>
nnoremap <leader>eb :vsplit $HOME/.bashrc<cr>
nnoremap <leader>ez :vsplit $HOME/.zshrc<cr>
nnoremap <leader>eq :vsplit $HOME/.config/qutebrowser/config.py<cr>
nnoremap <leader>ef :vsplit $HOME/.config/vifm/vifmrc<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap H ^
nnoremap L $
vnoremap <leader>" xi"<esc>pa"<esc>h
inoremap <esc> <nop>
inoremap jk <esc>

inoremap <c-d> <esc>ddi
inoremap <c-k> <esc>lki
inoremap <c-j> <esc>lji
inoremap <c-h> <esc>lhi
inoremap <c-l> <esc>lli

iabbrev teh the
iabbrev taht that
iabbrev jsut just
iabbrev abd and
iabbrev woudl would
iabbrev nwo now
iabbrev rnadom random
iabbrev ccopy Copyright 2023 MatMaka, all rights reserved.
iabbrev jf function
iabbrev jp () {<cr>};jkO<tab><bs>
iabbrev l( console.log();jkhh
