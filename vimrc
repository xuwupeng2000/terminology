let mapleader=","
set rtp+=~/.vim/vundle/
call vundle#rc()

" Motion and motion objects
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/file-line'

" Miscellaneous
Plugin 'tpope/vim-fugitive'

Plugin 'godlygeek/tabular'

Plugin 'ervandew/supertab'

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet.vim'
Plugin 'xuwupeng2000/neosnippet-snippets'

Plugin 'sickill/vim-pasta'

" Looking and feel
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'bling/vim-airline'

" Language-related
Plugin 'vim-ruby/vim-ruby'
Plugin 'muz/vim-gemfile'
Plugin 'thoughtbot/vim-rspec'

Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'

syntax on
filetype plugin indent on

set t_Co=256
colorscheme Tomorrow

" General settings
set nocompatible
set laststatus=2
set autoindent
set nowrap
set hlsearch
set showmatch
set ignorecase
set incsearch
set nobackup
set number
set smartcase
set mouse=a
set noswapfile
set showcmd
set title
set expandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamed

" Windoes movement
nnoremap gj <c-w>j
nnoremap gk <c-w>k
nnoremap gh <c-w>h
nnoremap gl <c-w>l

" Quit Vim
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>

" Shortcut for disable hightligting search results
nnoremap <leader>h :set hlsearch!<CR>

" Visual mode mappings
vnoremap < <gv
vnoremap > >gv

" Vim configs
nnoremap <leader>ev :vs $MYVIMRC<CR>

" Nerdtree
nnoremap nt :NERDTreeToggle<CR>

" Ctrlp
nnoremap <leader>f :CtrlP<CR>

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets/'
autocmd InsertLeave * NeoSnippetClearMarkers

" Expand NeoBundle with tab
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

cabbrev ns NeoSnippetEdit -vertical -split
