call plug#begin('~/.vim/plugged')

" languages support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" colorscheme
Plug 'patstockwell/vim-monokai-tasty'

" bottom line
Plug 'itchyny/lightline.vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" lightline configuration
let g:lightline = {'colorscheme': 'monokai_tasty'}
set laststatus=2

" netrw configuration
" do not display info on the top of window
let g:netrw_banner = 0

" open in tree view
let g:netrw_liststyle = 3

" detect the filetype of files
filetype plugin indent on

" show numbers at the left
set number
set relativenumber

" disable swap files
set noswapfile

" stop annoying bell
set noerrorbells

" stop wrapping text
set nowrap

" enable syntax
syntax on

" colorscheme
colorscheme vim-monokai-tasty

" 4 spaces indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" keep unsaved buffers open
set hidden

" guicursor will be always a block
set guicursor=

" do not highlight search
set nohlsearch

" highlight as you search
set incsearch

" show a vertical line on 80 chars
set colorcolumn=80

" function which trims whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup STAVE
    autocmd!
    " trim whitespace on save
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" mappings
let mapleader = " "

" open explorer
nnoremap <leader>pv :Ex<CR>

" open fuzzy finder
nnoremap <C-p> :Files<CR>
