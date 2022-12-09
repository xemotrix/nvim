" nnoremap <SPACE> <Nop>
let mapleader=" "

syntax on
filetype plugin on              " Will allow scripts to run for specific file types
filetype plugin indent on

set clipboard=unnamed
set number relativenumber
set exrc                        " To be able to override those configurations for each project with a local .nvimrc
set nowrap
set relativenumber
set mouse=a
set scrolloff=8
set sidescrolloff=8
set signcolumn=yes:2
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set noshowmode

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <leader>bc :bw<cr>

nnoremap <silent><leader>s :nohlsearch<cr>
nnoremap <silent><leader>S :set hlsearch<CR>

map <leader>tn :tabnew<cr>
map <leader>tm :tabmove 
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>

set updatetime=100

