set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set colorcolumn=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set cursorcolumn
" set relativenumber
set number
nnoremap <leader>h :set hlsearch! hlsearch?<CR> 
nnoremap <leader>n :set nu! nu? <CR>


call plug#begin()

Plug 'ellisonleao/gruvbox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jpalardy/vim-slime'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}  " R IDE

"-----completion-----
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'ray-x/lsp_signature.nvim'

"-----snippets-----
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'neovim/nvim-lspconfig'

"-----jupyter plugin-----
Plug 'luk400/vim-jukit' 

"-----sql-----
Plug 'nanotee/sqls.nvim'

"-----indentation guide-----
Plug 'lukas-reineke/indent-blankline.nvim'

" Plug 'williamboman/nvim-lsp-installer'
" Plug 'hrsh7th/cmp-copilot'
call plug#end()

" slime 
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
"--------------------------------------------------

" plugin configs
lua require('plug_config.nerd-tree')
lua require('plug_config.treesitter')
lua require('plug_config.tokyonight')
" lua require('plug_config.gruvbox')
" lua require('plug_config.coc')
lua require('plug_config.nvim-cmp')
lua require('plug_config.lsp_config')
" lua require('plug_config.lsp_installer')
lua require('plug_config.nvimR')
lua require('plug_config.indent_blankline')
