let mapleader=","
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
set rtp+=/usr/local/opt/fzf

so ~/.vim/plugins

syntax on
filetype plugin indent on

set t_Co=256
set guifont=Monaco:h14
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

" Ctrlp
"nnoremap <leader>f :CtrlP<CR>

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

set autoread
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_w = 1
let g:syntastic_check_on_open = 0
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

nmap <leader>f :FZF<CR>

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:vroom_use_colors=1
let g:vroom_clear_screen=1
