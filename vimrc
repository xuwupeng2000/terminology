let mapleader=","
set rtp+=~/.vim/terminology/vundle/
call vundle#rc()
filetype off

so ~/.vim/terminology/plugins

"set t_Co=256
colorscheme Tomorrow

syntax on

" Windoes movement
nnoremap gj <c-w>j
nnoremap gk <c-w>k
nnoremap gh <c-w>h
nnoremap gl <c-w>l
" Quit Vim
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>

" Normal mode mappings
nnoremap <leader>ev :vs $MYVIMRC<CR>
nnoremap nt :NERDTreeToggle<CR>

" Disable capital K U
nnoremap K k
nnoremap U u

" Shortcut for disable hightligting search results
nnoremap <leader>h :set hlsearch!<CR>

" Visual mode mappings
vnoremap < <gv
vnoremap > >gv

" ESC key no more
imap jf <Esc>
vnoremap jf <Esc>

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
set winheight=5
set mouse=a
set noswapfile
set showcmd
set title
set expandtab
set tabstop=2
set shiftwidth=2
" For copy text from other source into vim
set clipboard=unnamedplus

" Paste Mode
nnoremap <leader>p :set invpaste paste?<CR>
set showmode

" Ctrlp
nnoremap <leader>f :CtrlP<CR>

" Vundle
cabbrev bi BundleInstall
cabbrev bu BundleUpdate
cabbrev bc BundleClean

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
