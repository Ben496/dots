" options required by vundle {{{1
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" init plugins {{{2
Plugin 'unblevable/quick-scope'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-airline/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'morhetz/gruvbox'
Plugin 'DougBeney/pickachu'
Plugin 'zxqfl/tabnine-vim'
Plugin 'mcchrish/nnn.vim'
Plugin 'ap/vim-css-color'
Plugin 'dense-analysis/ale'
Plugin 'bluz71/vim-moonfly-colors'
"Plugin 'Valloric/YouCompleteMe'
" }}}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set truecolor for onedark.vim
set termguicolors
" }}}

" ALE
let g:ale_linters = {'rust': ['analyzer']}

" My options {{{1
set expandtab
set softtabstop=4
set shiftwidth=4
set path+=** " add current directory tree to search path
set wildignore+=**/.git/**,**/node_modules/** " ignore these directories in path
set scrolloff=6
set smartindent
set number
"set relativenumber
set hid
set mouse=a
set ignorecase " ignore case be default when searching
filetype plugin on " required for vimwiki
syntax on
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"
colorscheme moonfly
set background=dark
set cursorline
set colorcolumn=80
highlight colorcolumn ctermbg=black
highlight cursorline cterm=NONE ctermbg=black "ctermfg=darkred
let g:gitgutter_enabled = 1
let g:ycm_key_list_select_completion = ['<Down>'] " override tab for selecting completion (tabnine/youcompleteme)
let g:ycm_key_list_previous_completion = ['<Up>'] " override tab for selecting previous completion (tabnine/youcompleteme)
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
" }}}

" Custom Keybinds {{{1
" Set Leader Key
let mapleader = ","

" custom patterns {{{2
inoremap (; ();<left><left>
inoremap {<cr> {<cr>}<esc>O
inoremap {;<cr> {<cr>};<esc>O
inoremap <> <><left>
" }}}

" navigate windows from any mode {{{2
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" move windows from any mode
tnoremap <A-H> <C-\><C-N><C-w>H
tnoremap <A-J> <C-\><C-N><C-w>J
tnoremap <A-K> <C-\><C-N><C-w>K
tnoremap <A-L> <C-\><C-N><C-w>L
inoremap <A-H> <C-\><C-N><C-w>H
inoremap <A-J> <C-\><C-N><C-w>J
inoremap <A-K> <C-\><C-N><C-w>K
inoremap <A-L> <C-\><C-N><C-w>L
nnoremap <A-H> <C-w>H
nnoremap <A-J> <C-w>J
nnoremap <A-K> <C-w>K
nnoremap <A-L> <C-w>L
" }}}

" shortcut to escape terminal mode easier
tnoremap <C-n> <C-\><C-n>

" Pickachu mappings
nnoremap <A-c> :Pick color<CR>
nnoremap <A-f> :Pick file<CR>
nnoremap <A-d> :Pick date<CR>

" hot editing of this file
nnoremap <leader>es :split ~/.vimrc<cr>
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source %<cr>

" misc
nnoremap <space> za
nnoremap <C-q> :set textwidth=80<cr>
nnoremap <C-s> :set textwidth=0<cr>
" }}}
