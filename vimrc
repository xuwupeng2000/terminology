let mapleader=","
set rtp+=~/.vim/terminology/vundle/
call vundle#rc()
filetype off

so ~/.vim/plugins

set t_Co=256
set background=dark

hi CursorLine term=none cterm=none ctermbg=236
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
imap ii <Esc>
imap jf <Esc>
imap jj <Esc>
imap `` <Esc>

" General settings
set nocompatible
set laststatus=2 " Double bar
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
set winwidth=82
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

" ColorScheme Browse
cabbrev cs ColorSchemeBrowse

" Neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets/'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

cabbrev ns NeoSnippetEdit -vertical -split

au VimEnter * RainbowParenthesesToggle
au Syntax   * RainbowParenthesesLoadRound
au Syntax   * RainbowParenthesesLoadSquare
au Syntax   * RainbowParenthesesLoadBraces

" Surround
autocmd FileType eruby let b:surround_61 = "<%= \r %>"
autocmd FileType eruby let b:surround_45 = "<% \r %>"

filetype plugin on
filetype plugin indent on

" Rspec
map <Leader>r :call RunCurrentSpecFile()<CR>

" ZoomWin
nnoremap <c-w>z :ZoomWin<CR>

" WhiteSpace
nnoremap <Leader>s :ToggleWhitespace<CR>
