call plug#begin()
    Plug 'tpope/vim-surround'        " Surrounding ysw)
    Plug 'tpope/vim-commentary'      " For Commenting gcc & gc
    Plug 'tpope/vim-sleuth'          " Auto tab parameters
    Plug 'voldikss/vim-floaterm'     " cool floating terminal
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'    " git diff markers
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'junegunn/vim-easy-align'
    "Plug 'itchyny/lightline.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'catppuccin/vim', { 'as': 'catppuccin' }

    " Review:
    " Plug 'preservim/tagbar'          " Tagbar for code navigation
    " Plug 'easymotion/vim-easymotion' " Cool f: <space><space>f [letter]
    " Plug 'shmup/vim-sql-syntax'
    " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

    " NerdTree
    Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin' |
        \ Plug 'ryanoasis/vim-devicons'

    " Telescope
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'fatih/vim-go'

    " CMP
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

