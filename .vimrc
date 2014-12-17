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
"Plugin 'kien/ctrlp.vim'
" Airline
Plugin 'bling/vim-airline'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" git
Plugin 'tpope/vim-fugitive'
" Rust
Plugin 'wting/rust.vim'
" supertab
Plugin 'ervandew/supertab'
" tiled window management
"Plugin 'spolu/dwm.vim'
"Plugin 'sjbach/lusty'
" Command T
Plugin 'wincent/command-t'
" tcomment
Plugin 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
let mapleader=','
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
set history=100
set cursorline
"set colorcolumn=100
set linespace=1
" NERD Tree
autocmd vimenter * NERDTree
map <f1> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
" ctrlp
let g:ctrlp_extensions = ['mixed']
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_root_markers = ['Cargo.toml']
set wildignore+=target
" Rust auto complete
set hidden
let g:racer_cmd = "/Users/jake/other/racer/bin/racer"
let $RUST_SRC_PATH="/Users/jake/other/rust/src:/Users/jake/work/xl/chat/server/src:/Users/jake/.cargo/git/checkouts/mio-8730c946209c11b6/master/src"
let g:racer_experimental_completer = 1
let g:rust_recommended_style = 0
map <f12> gd
" build system
set makeprg=cargo
map <f4> :cn<cr>
map <s-f4> :cp<cr>
map <f7> :make build<bar>:cw<cr>
inoremap <f7> <esc>:make build<bar>:cw<cr>
map <s-f7> :make test<bar>:cw<cr>
inoremap <s-f7> <esc>:make test<cr>
" save when focus is lost
au FocusLost * :wa
" Execute current line or current selection as Vim EX commands.
nnoremap <F11> :exe getline(".")<CR>
vnoremap <F11> :<C-w>exe join(getline("'<","'>"),'<Bar>')<CR>
" buffer navigation
map <d-0> :bn<cr>
map <d-9> :bp<cr>
" window navigation
map <c-j> <c-w>w
map <c-k> <c-w>W
map <d-1> <c-w>o
map <c-l> 20<c-w>+
" command-t
nnoremap <silent> <leader>b :CommandTMRU<CR>
let g:CommandTTraverseSCM = 'pwd'
map <d-t> :CommandT<cr>
map <leader>t :CommandT<cr>
" comment
nmap <d-/> gcc
vmap <d-/> gc
" find in files
map <D-F> :vimgrep "<c-r><c-w>" **/*.rs<left><left><left><left><left><left><left><left><left>
