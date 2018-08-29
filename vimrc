" This is expecting to layer onto the config provided by Git for Windows

source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Update view faster, mostly for git-gutter
set updatetime=100

" Search as you type, highlight when you're done
set incsearch
set hlsearch

" Turn on spellchecking
set spell spelllang=en_us

" Split like you'd expect in other programs
set splitbelow
set splitright

" Show matching ~brackets
set showmatch

" Be a bit more aggressive with scroll offsets
set scrolloff=2
set sidescrolloff=5

" Play some with the tab completion
set wildmenu
set wildmode=list:longest,full

" Relocate swap files.  Double trailing slash is an implicit hint.
set directory=~/.vim/swap_files//



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

" Use <C-L> to additionally clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

" FZF mappings
nnoremap <Leader>pp :Files ~\repos\
nnoremap <Leader>pf :GFiles<CR>
nnoremap <Leader>ff :Files %:p:h
nnoremap <Leader>fr :History<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>/ :BLines<CR>

" Git related mappings
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gf :Gfetch --prune<CR>
nnoremap <Leader>gF :Gpull<CR>
nnoremap <Leader>gP :Gpush --set-upstream<CR>
nnoremap <Leader>gp :Gpush --set-upstream<Space>
nnoremap <Leader>gc :Gcommit --verbose<CR>
nnoremap <Leader>gC :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>fu :Gblame<CR>
