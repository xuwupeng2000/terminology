let mapleader=","
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

so ~/.vim/terminology/plugins

syntax on
filetype plugin indent on

set t_Co=256
colorscheme Tomorrow-Night
set guifont=Monaco:h14

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

" Speed up
let loaded_matchparen=1 " Don't load matchit.vim (paren/bracket matching)
set noshowmatch         " Don't match parentheses/brackets
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML

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

" Ctrlp
nnoremap <leader>f :CtrlP<CR>

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
