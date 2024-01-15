" install plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'wakatime/vim-wakatime'
call plug#end()

let mapleader = '\<Space>'

filetype plugin indent on
syntax enable

set encoding=utf-8
set expandtab
set shiftwidth=8
set tabstop=8
set textwidth=80
set wildmenu
set wrap

autocmd FileType css,scss,sass,html,javascript,xml set shiftwidth=4
autocmd FileType css,scss,sass,html,javascript,xml set tabstop=4
autocmd FileType javascript,typescript iabbrev ;f function
autocmd FileType javascript,typescript iabbrev vc const
autocmd FileType javascript,typescript iabbrev vl let
autocmd FileType javascript,typescript iabbrev vv var
autocmd FileType vim set shiftwidth=2
autocmd FileType vim set tabstop=2

inoremap <c-d> <esc>ddi
inoremap <esc> <nop>
inoremap jk <esc>
inoremap q" <esc>bi"<esc>ea"

nnoremap - dd
nnoremap <c-u> <esc>bveU
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>e3 :vsplit $HOME/.config/i3/config<cr>
nnoremap <leader>ea :vsplit $HOME/.aliases<cr>
nnoremap <leader>eb :vsplit $HOME/.bashrc<cr>
nnoremap <leader>ef :vsplit $HOME/.config/vifm/vifmrc<cr>
nnoremap <leader>eq :vsplit $HOME/.config/qutebrowser/config.py<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ez :vsplit $HOME/.zshrc<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>
nnoremap <leader>tc :VimtexCompile<cr>
nnoremap H ^
nnoremap L $
nnoremap _ ddkP
nnoremap + ddp

vnoremap <leader>' xi'<esc>pa'<esc>h

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger='<c-m>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" vimtex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_method='zathura'

" youcompleteme
let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'texlab',
  \     'cmdline': [ 'texlab' ],
  \     'filetypes': [ 'tex' ]
  \   },
  \   {
  \     'name': 'vim-language-server',
  \     'cmdline': [ 'vim-language-server', '--stdio' ],
  \     'filetypes': [ 'vim' ]
  \   },
  \ ]
