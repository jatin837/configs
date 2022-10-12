set nocompatible              " be iMproved, required
filetype off                  " required
set number 
set relativenumber 
set tabstop=2 
set shiftwidth=2 
set autoindent
set smartindent
set noshowmode
set clipboard=unnamedplus
set mouse=a
set conceallevel=2

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

set rtp+=~/.vim/bundle/Vundle.vim

set directory=$HOME/.vim/swapfiles//

call vundle#begin()
	Plugin 'preservim/nerdcommenter'
	Plugin 'preservim/vim-pencil'
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'preservim/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'dense-analysis/ale'
	Plugin 'Shougo/vimproc.vim'
	Plugin 'eagletmt/ghcmod-vim'
	Plugin 'xuhdev/vim-latex-live-preview'
	Plugin 'tpope/vim-fugitive'
	Plugin 'cespare/vim-toml'
	Plugin 'integralist/vim-mypy'
	Plugin 'JamshedVesuna/vim-markdown-preview'
	Plugin 'vim-scripts/indentpython.vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'mxw/vim-jsx'
	Plugin 'rust-lang/rust.vim'
call vundle#end()

let g:ale_linters = {
			\ 'haskell': ['hlint', 'hdevtools', 'hfmt'],
			\}

syntax enable
filetype plugin indent on

nnoremap <Leader>ht :GhcModType<cr>
nnoremap <Leader>htc :GhcModTypeClear<cr>
autocmd FileType haskell nnoremap <buffer> <leader>? :call ale#cursor#ShowCursorDetail()<cr>

filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'
	Plug 'jceb/vim-orgmode'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'junegunn/goyo.vim'
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'kylelaker/riscv.vim'
	Plug 'mhinz/vim-startify'
call plug#end()

let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_set = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:livepreview_previewer = 'okular'
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

packloadall
silent! helptags ALL
