call plug#begin()
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

let g:airline_theme='base16_chalk'
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_working_path_mode = 'ra'
nnoremap <F8> :TagbarToggle<CR>

let mapleader = "\<Space>"
filetype plugin on

if v:version >= 900
    let &wildoptions="pum"
endif

set expandtab
set tabstop=8
set shiftwidth=8
set textwidth=80
set wrap
set wildmenu

filetype plugin indent on
syntax enable

let g:vimtex_view_method = 'zathura'
let maplocalleader = ","
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

autocmd FileType css,scss,sass,html set shiftwidth=4
autocmd FileType css,scss,sass,html set tabstop=4
        
vnoremap z "+y

let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']

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

let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_config_files = [
            \".prettierrc", ".prettierrc.json", ".prettierrc.yml", 
            \".prettierrc.yaml", ".prettierrc.json5", ".prettierrc.js",
            \"prettier.config.js", ".prettierrc.mjs", "prettier.config.mjs",
            \".prettierrc.cjs", "prettier.config.cjs", ".prettierrc.toml"
            \]


" create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
