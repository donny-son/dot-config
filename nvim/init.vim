set nocompatible              " required
filetype off                  " required
syntax on
set hidden
set nohlsearch
set cursorline
set noerrorbells
set ruler
set incsearch
set encoding=utf-8
set smartindent
set nu
set clipboard=unnamed
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set ruler
set incsearch
set termguicolors
set scrolloff=30
<<<<<<< HEAD
set colorcolumn=80
=======
" set textwidth=80
" set colorcolumn=80
>>>>>>> 939104b480165ddd42b00f08f16bc9474fac0e27
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'rstacruz/vim-closer'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'nvim-lua/popup.nvim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/seoul256.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'psliwka/vim-smoothie'
" Plug 'davidhalter/jedi-vim',
Plug 'Iron-E/nvim-libmodal'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Iron-E/nvim-typora'
Plug 'plasticboy/vim-markdown'
call plug#end()


let g:NERDTreeWinSize=20
" let g:seoul256_background = 233
" color seoul256


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let mapleader=" "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :close<CR>
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
noremap <Leader>r :resize +8<CR>
noremap <Leader>R :resize -8<CR>
noremap <Leader>v :vertical resize +8<CR>
noremap <Leader>V :vertical resize -8<CR>
nnoremap <C-R> :w <CR> :sp <CR> :term python % <CR>
nnoremap <C-W> :bd!<CR>


autocmd vimenter * NERDTree
autocmd BufRead *.lyx set syntax=lyx foldmethod=syntax foldcolumn=3
autocmd BufRead *.lyx syntax sync fromstart
