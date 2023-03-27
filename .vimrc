set relativenumber
set showcmd
set showmode
set number
set incsearch
set hlsearch
set ignorecase
set smartcase
set clipboard+=unnamed
:set scrolloff=4
"" Move lines up and down in normal and visual mode
"Move the unnamed register to a, b, c or d registers, for further operations. Also paste those registers.
nnoremap ,mca p`[v`]"ad
nnoremap ,mla p`[V`]"adk
nnoremap ,mcb p`[v`]"bd
nnoremap ,mlb p`[V`]"bdk
nnoremap ,mcc p`[v`]"cd
nnoremap ,mlc p`[V`]"cdk
nnoremap ,mcd p`[v`]"dd
nnoremap ,mld p`[V`]"ddk
nnoremap ,pa "ap
nnoremap ,pb "bp
nnoremap ,pc "cp
nnoremap ,pd "dp
nnoremap ,Pa "aP
nnoremap ,Pb "bP
nnoremap ,Pc "cP
nnoremap ,Pd "dP
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-L> :nohlsearch<CR><CR>
" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j
" Easy supr with control Backspace
inoremap <C-BS> <Del>
" Easy move to four directions with control
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>
""" The Leader Key
let mapleader=" "
inoremap jk <Esc>
vnoremap < <gv
vnoremap > >gv