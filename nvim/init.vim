set nocompatible              " required
filetype off                  " required
syntax enable
set mouse=a
set hidden
set noimd
set nohlsearch
set cursorline
set noerrorbells
set ruler
set incsearch
set encoding=utf-8
set conceallevel=0
set cmdheight=2
set fileencoding=utf-8
set smartindent
set nu
set clipboard=unnamedplus
set t_Co=256
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set updatetime=300
set formatoptions-=cro
set fileformat=unix
set ruler
set incsearch
set termguicolors
set scrolloff=30
set colorcolumn=80
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'rstacruz/vim-closer'
Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'danilo-augusto/vim-afterglow'
Plug 'jiangmiao/auto-pairs'
Plug 'psliwka/vim-smoothie'
Plug 'junegunn/vim-easy-align'
" Plug 'davidhalter/jedi-vim',
" Plug 'Iron-E/nvim-libmodal'
" Plug 'Iron-E/nvim-typora'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
call plug#end()


let g:NERDTreeWinSize=35
colorscheme afterglow

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
noremap <C-k> :resize +4<CR>
noremap <C-j> :resize -4<CR>
noremap <C-h> :vertical resize -4<CR>
noremap <C-l> :vertical resize +4<CR>

" Python 
let g:python3_host_prog = expand("/opt/anaconda3/bin/python3")
nnoremap <C-R> :w <CR> :sp <CR> :term python3 % <CR>
nnoremap <C-W> :bd!<CR>

" R
let R_path="/Library/Frameworks/R.framework/Resources/bin"

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" autocmd vimenter * NERDTree
autocmd BufRead *.lyx set syntax=lyx foldmethod=syntax foldcolumn=3
autocmd BufRead *.lyx syntax sync fromstart

au! BufWritePost $MYVIMRC source %

" OPEN IN VSCODE
:command! OpenCwdInVSCode exe "silent !code '" . getcwd() . "' --goto '" . expand("%") . ":" . line(".") . ":" . col(".") . "'" | redraw!
