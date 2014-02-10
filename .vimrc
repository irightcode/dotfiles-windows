set nocompatible               " Be iMproved
if has('vim_starting')

  " Required:
  set runtimepath+=~/vimfiles/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/vimfiles/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'xolox/vim-notes'


" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Turn off wrapping
set nowrap

syntax on
set background=dark
colorscheme solarized

" set visual bell
set vb

" Make the command-line completion better
set wildmenu

" GUI stuff
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar
au GUIEnter * simalt ~x "vim window maximized

"Set Backup Directory
set directory=~/vimfiles/backup//
set backupdir=~/vimfiles/backup//

set guifont=Consolas:h10:cANSI

"Use Smartcase when searching
"if case is used in search; it assumes it is case sensitive
set smartcase
set ignorecase

let mapleader = ","
noremap , \

nmap <leader>gs :e ~\vimfiles\Documents\scratchpad.txt<CR>
nmap <leader>gv :e $HOME/vimfiles/.vimrc<CR>
nmap <leader>gk :e C:/dev/kaba/bcore/KabaIni.xml<CR>
nmap <leader>gw :e C:/dev/eclipse/workspaces/<CR>
nmap <leader>gds :exe 'edit C:/dev/j2ee/DataSourceFiles/'.strpart(expand('<cfile>'), stridx(expand('<cfile>'), "/"))."-ds.xml"<cr>
nmap <leader>p :CtrlP<CR>

"Change current working to current file's directory
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" cycle through buffers with <ALT><Left> and <ALT><Right>
nmap <M-Left> :bprev<CR>
nmap <M-Right> :bnext<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap j gj
nnoremap k gk

" Folding
nnoremap z, zMzvzazO

" Inserting timestamp (Normal & Insert)
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

"Training
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" remove annoying highlight
noremap <CR> :noh<CR>

" No Help, please
nmap <F1> <Esc>
nmap <C-F1> <Esc>

" Help for specific shortcut keys
nmap <M-F1> :map

"use alternative keys
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

" Command abbreviation
cabbr <expr> %% expand('%:p:h')

" Plugin Customization
"   Notes.vim
let g:notes_directory = '~/vimfiles/Documents/Notes'

"   Ctrlp.vim
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn.*|.*\.jar|\.settings*|extjslib*'
set wildignore+=.settings\*,extjslib*,.svn\*,*.swp,*.zip,*.exe,*.jar   " Windows

"   JsBeautify
nmap <leader>f :call JsBeautify()<CR>
