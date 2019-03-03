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

" Run python using f9
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python vnoremap <buffer> <f9> :w !python<CR>


" YouCompleteMe Customizations
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion=0


" Map Ctrl-Space to Go to definition. Note that on iterm, ctrl space goes
" through as a weird null character: ^@
nnoremap <C-@> :YcmCompleter GoToDefinition<CR> 

