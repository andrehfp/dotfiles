syntax on

set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
highlight ColorColumn ctermbg=16
set signcolumn=yes
set wildmenu
set foldenable
set foldmethod=indent
autocmd BufRead, BufNewFIle *.md, *.txt setlocal wrap
set clipboard=unnamed,unnamedplus

call plug#begin('~/.vim/plugged')
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'drewtempelmeyer/palenight.vim' " Soothing color scheme for your favorite [best] text editor
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme palenight
set background=dark

let mapleader=" "
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <leader>f :call CocAction('format')<CR>


