set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Airline
Plugin 'bling/vim-airline'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" git
Plugin 'tpope/vim-fugitive'
" supertab
Plugin 'ervandew/supertab'
" syntax check
" Plugin 'scrooloose/syntastic'
" taglist
" Plugin 'vim-scripts/taglist.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
" Plugin 'majutsushi/tagbar'
" tiled window management
"Plugin 'spolu/dwm.vim'
"Plugin 'sjbach/lusty'

" Command T, FuzzyFinder, ctrlp
" Plugin 'kien/ctrlp.vim'
" Plugin 'wincent/command-t'
Plugin 'L9'
Plugin 'vim-scripts/FuzzyFinder'
" tcomment
Plugin 'tomtom/tcomment_vim'
" color picker
Plugin 'KabbAmine/vCoolor.vim'

" Language support
" Coffeescript
Plugin 'kchmck/vim-coffee-script'
" LESS
Plugin 'groenewege/vim-less'
" jade
Plugin 'digitaltoad/vim-jade'
" bufexplorer
Plugin 'jlanzarotta/bufexplorer'
" stylus mode
Plugin 'wavded/vim-stylus'
" slim mode
Plugin 'slim-template/vim-slim'
" Rust
Plugin 'wting/rust.vim'
" Swift
Plugin 'Keithbsmiley/swift.vim'
" Nim
Plugin 'zah/nimrod.vim'

" color schemes
Plugin 'chankaward/vim-railscasts-theme'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'MichaelMalick/vim-colors-bluedrake'
Plugin 'croaky/vim-colors-github'
Plugin 'baskerville/bubblegum'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'marlun/vim-starwars'
Plugin 'junegunn/seoul256.vim'
Plugin 'Sorcerer'
Plugin 'romainl/Apprentice'
Plugin 'jnurmine/Zenburn'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'applede/monokai-easy'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
syntax on
set shell=/bin/bash
set mouse=a
let mapleader=','
set hidden
set autowriteall
let g:molokai_original = 1
set background=dark
let g:seoul256_background = 235
let g:jellybeans_background_color = "2a2a2a"
" let base16colorspace=256
colorscheme monokai
set number
set scrolloff=5
set incsearch
set laststatus=2
set tabstop=2
set expandtab
set shiftwidth=2
set ignorecase
set smartcase
set history=1000
set cursorline
" set colorcolumn=100
set linespace=1
set wildignore+=target
set nobackup
set noswapfile
" NERD Tree
" autocmd vimenter * NERDTree
" let NERDTreeQuitOnOpen=1
" BufExplorer
" nnoremap <silent> <F2> :BufExplorer<CR>
let g:fuf_coveragefile_globPatterns=['**/*.rs', '**/*.toml', '**/*.rb', '**/*.js', '**/*.css']
let g:fuf_modesDisable = [ 'mrucmd', ]
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <F2> :FufBuffer<CR>
nnoremap <F3> :FufCoverageFile<CR>
" nnoremap <F3> :bd<cr>
" tag
set tags+=~/other/rust/TAGS.vi
let g:easytags_by_filetype = '~/.tags'
" let g:easytags_async = 1
let g:tagbar_type_rust = {
      \ 'ctagstype':'rust',
      \ 'kinds':[
        \ 'g:enums',
        \ 'T:types',
        \ 'd:macros',
        \ 't:traits',
        \ 's:structures',
        \ 'i:traits implementations',
        \ 'c:static',
        \ 'm:modules',
        \ 'f:functions'
      \ ],
      \ 'sort':0,
    \ }
nmap <F5> :UpdateTags<CR>
nmap <F8> :tn<CR>
nmap <S-F8> :tp<CR>
" nmap <F8> :TagbarToggle<CR>
" let Tlist_Enable_Fold_Column = 0
" let Tlist_Use_SingleClick = 1
" nnoremap <F5> :!ctags -R<CR>
" let tlist_rust_settings='rust;g:Enums;T:Types;s:Structures;t:Traits;d:Macros;f:Functions'
" ctrlp
let g:ctrlp_extensions = ['mixed']
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_root_markers = ['Cargo.toml']
" Rust auto complete
let g:racer_cmd = "/Users/jake/other/racer/bin/racer"
let $RUST_SRC_PATH="/Users/jake/other/rust/src:/Users/jake/work/xl/chat/server/src:/Users/jake/.cargo/git/checkouts/mio-8730c946209c11b6/master/src"
let g:racer_experimental_completer = 1
let g:rust_recommended_style = 0
" build system
set makeprg=cargo
map <f4> :cn<cr>
inoremap <f4> <esc>:cn<cr>
map <s-f4> :cp<cr>
map <f7> :make build<bar>:cw<cr>
inoremap <f7> <esc>:make build<bar>:cw<cr>
map <s-f7> :make test -- --nocapture<bar>:cw<cr>
inoremap <s-f7> <esc>:make test -- --nocapture<cr>
" save when focus is lost
au FocusLost * :wa
" Execute current line or current selection as Vim EX commands.
nnoremap <F11> :exe getline(".")<CR>
vnoremap <F11> :<C-w>exe join(getline("'<","'>"),'<Bar>')<CR>
" buffer navigation
map <d-0> :bn<cr>
map <d-9> :bp<cr>
" command-t
nnoremap <silent> <leader>b :CommandTMRU<CR>
let g:CommandTTraverseSCM = 'pwd'
map <d-O> :CommandT<cr>
" comment
nmap <d-/> gcc
nmap <esc>/ gcc
vmap <d-/> gc
vmap <esc>/ gc
" find in files
map <D-F> :vimgrep "" **/*.rs<left><left><left><left><left><left><left><left><left>
" window movement
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr()) "we havent moved
    if (match(a:key,'[jk]')) "were we going up/down
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

function! CloseOther()
  let t:curwin = winnr()
  while 1
    exec "wincmd j"
    if (t:curwin == winnr()) "we havent moved
      break
    else
      wincmd c
      let t:curwin = winnr()
    endif
  endwhile
  while 1
    exec "wincmd k"
    if (t:curwin == winnr()) "we havent moved
      break
    else
      wincmd c
      let t:curwin = winnr()
    endif
  endwhile
endfunction

map <c-h> :call WinMove('h')<cr>
map <c-k> :call WinMove('k')<cr>
map <c-l> :call WinMove('l')<cr>
map <c-j> :call WinMove('j')<cr>
map <d-1> :call CloseOther()<cr>
" show highlight group
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" nim goto def
fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  elseif &filetype == "rust"
    exe "norm! gd"
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nnoremap <f12> :call JumpToDef()<cr>
inoremap <f12> <esc>:call JumpToDef()<cr>i

nnoremap <f9> :silent execute "!open Maid.app" \| redraw!<cr>
inoremap <f9> <esc>:silent execute "!open Maid.app" \| redraw!<cr>
