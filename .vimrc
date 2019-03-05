" -----------------------------------SH VIM PLUG-----------------

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Nerd commenter plugin for vim
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

" ------------------------------------SH VIMRC------------------------------------------------------------------------

set encoding=utf-8

" Colour stuff, none of this bleeding well works on MacOS
syntax on
set t_Co=256
"set background=dark
colorscheme zenburn
" Show filename in status bar
set laststatus=2
set statusline="%f"
" Git diffs on current buffer vs saved changes
nnoremap <leader>d :w !diff % -<CR>


" Tab defaults
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Show line numbers
set number
" Fix backspace key
set backspace=indent,eol,start


" Split navigation: This reduces the workflow to one key combination
" Move to split below
nnoremap <C-J> <C-W><C-J>   
" Move to split above
nnoremap <C-K> <C-W><C-K>
" Move to split right
nnoremap <C-L> <C-W><C-L>
" Move to split left
nnoremap <C-H> <C-W><C-H>


