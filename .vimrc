call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'

call plug#end()


syntax on
filetype indent plugin on
set tabstop=4               " Number of visual spaces per tab
set softtabstop=4           " Number of spaces in tab when editing
set expandtab               " Tabs are spaces
set shiftwidth=4            " Indentation when doing >>

set number relativenumber   " Show linenumbers (hybrid)
set showcmd                 " Show command on bottom right
set wildmenu                " Display command line’s tab complete options as a menu

set showmatch               " Highlight matching parens
set matchtime=3             " Faster matching

set incsearch               " Incremental search
set hlsearch                " Highlight search

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" remove C/C++ single-line comment continuation
au FileType c,cpp setlocal comments-=:// comments+=f://

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

set laststatus=2    " Always display the status bar
set noshowmode      " Hide -- INSERT --

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
