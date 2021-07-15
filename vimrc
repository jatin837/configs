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


set rtp+=~/.vim/bundle/Vundle.vim

set directory=$HOME/.vim/swapfiles//
call vundle#begin()
	Plugin 'preservim/nerdcommenter'
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'preservim/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'
	Plug 'jceb/vim-orgmode'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'mhinz/vim-startify'
call plug#end()

let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_set = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

packloadall
silent! helptags ALL
