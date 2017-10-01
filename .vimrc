" ------------------------------------VUNDLE-------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" ------------------------------------SH: VUNDLE PLUGINS-----------------------------------------------------------------
Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
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

" Enable copy and paste from system clipboard

