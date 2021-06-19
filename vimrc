let mapleader=","
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
set rtp+=/usr/local/opt/fzf

" Utilities
Plugin 'VundleVim/Vundle.vim'

" Motion and motion objects
Plugin 'Lokaltog/vim-easymotion'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'michaeljsmith/vim-indent-object'

" Look and feel
Plugin 'croaky/vim-colors-github'
Plugin 'nanotech/jellybeans.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'mkarmona/colorsbox'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'mhartington/oceanic-next'

" Miscellaneous
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/file-line'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'xuwupeng2000/vim-youdao'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet.vim'
Plugin 'rhysd/clever-f.vim'
Plugin 'rhysd/committia.vim'
Plugin 'yegappan/mru'

" Language-related
Plugin 'elzr/vim-json'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'

Plugin 'skalnik/vim-vroom'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'muz/vim-gemfile'
Plugin 'thoughtbot/vim-rspec'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jparise/vim-graphql'
Plugin 'othree/html5.vim'

syntax on
filetype plugin indent on

set t_Co=256
set guifont=Monaco:h14
"colorscheme OceanicNext
"colorscheme Tomorrow
colorscheme molokai
"colorscheme gruvbox

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
set smartindent

imap jf <Esc>

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


" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets/'
autocmd InsertLeave * NeoSnippetClearMarkers

" Expand NeoBundle with tab
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

cabbrev ns NeoSnippetEdit -vertical -split

nmap <leader>f :FZF<CR>
nmap <leader>r :History<CR>

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
