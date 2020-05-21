call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'

call plug#end()


syntax on
filetype indent on
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set number
set showcmd
set wildmenu

set showmatch
set incsearch
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" remove C/C++ single-line comment continuation
au FileType c,cpp setlocal comments-=:// comments+=f://

set laststatus=2
set noshowmode

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set termguicolors
set background=dark
colorscheme gruvbox

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
