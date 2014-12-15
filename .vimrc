set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" molokai
Plugin 'tomasr/molokai'
" ctrlp
Plugin 'kien/ctrlp.vim'
" Airline
Plugin 'bling/vim-airline'
" nerd commenter
Plugin 'scrooloose/nerdcommenter'

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
set autowriteall
let g:molokai_original = 1
colorscheme molokai
set number
set scrolloff=5
set incsearch
set laststatus=2
set tabstop=2
set expandtab
set shiftwidth=2
set ignorecase
set smartcase
" ctrlp
let g:ctrlp_extensions = ['mixed']
let g:ctrlp_cmd = 'CtrlPMixed'
" save when focus is lost
au FocusLost * :wa
" Execute current line or current selection as Vim EX commands.
nnoremap <F12> :exe getline(".")<CR>
vnoremap <F12> :<C-w>exe join(getline("'<","'>"),'<Bar>')<CR>
map <d-[> <c-w>W
map <d-]> <c-w>w
map <d-/> <plug>NERDCommenterToggle
map <d-1> <c-w>o
