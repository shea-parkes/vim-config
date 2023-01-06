execute 'source ' . expand('<sfile>:p:h') . '/bundle/vim-pathogen/autoload/pathogen.vim'
execute pathogen#infect()

" Update view faster, mostly for git-gutter
set updatetime=100

" The few settings not tackled by vim.sensible
set hlsearch
set spell spelllang=en_us
set showmatch
set wildmode=list:longest,full

" Relocate swap files.  Double trailing slash is an implicit hint.
set directory=~/.vim/swap_files//

" Bring in a sane colorscheme
set background=dark
colorscheme gruvbox


"""""""""""""""""""""""""""
"" Custom Keybindings """""
"""""""""""""""""""""""""""

let mapleader="\<SPACE>"

" Custom basic mappings
nnoremap Y y$
nnoremap <Leader><Leader> :
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>v "+p
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bD :bd!<CR>
nnoremap <Leader>sc z=
nnoremap <Leader>sC z=

" Stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

