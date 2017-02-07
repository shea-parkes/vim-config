source ~/repos/vim-plugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/repos/vim-plugins/{}')

" Update view faster, mostly for git-gutter
set updatetime=2100

let g:slime_target = "conemu"
" let g:slime_python_ipython = 1

" Be a bit more aggressive with scroll offsets
set scrolloff=3
set sidescrolloff=5

" Search as you type, highlight when you're done
set incsearch
set hlsearch

" Use <C-L> to additionally clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Play some with the tab completion
set wildmenu
set wildmode=list:longest,full

" Relocate swap files.  Double trailing slash is an implicit hint.
set directory=~/.vim/swap_files//

