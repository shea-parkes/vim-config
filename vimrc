execute 'source ' . expand('<sfile>:p:h') . '/bundle/vim-pathogen/autoload/pathogen.vim'
execute pathogen#infect()

" Update view faster, mostly for git-gutter
set updatetime=100

" The few settings not tackled by vim.sensible (or I want to deviate from it)
set hlsearch
set spell spelllang=en_us
set showmatch
set wildmode=list:longest,full
set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
set list
let g:netrw_liststyle = 3

" Delete trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

function! TrimTrailingLines()
  let lastLine = line('$')
  let lastNonblankLine = prevnonblank(lastLine)
  if lastLine > 0 && lastNonblankLine != lastLine
    echom 'Deleting extra newlines at end of file'
    execute lastNonblankLine + 1 . ',$delete _'
  endif
endfunction

autocmd BufWritePre * call TrimTrailingLines()

" Relocate swap files.  Double trailing slash is an implicit hint.
set directory=~/.vim/swap_files//

" Bring in a sane colorscheme
set background=dark
set termguicolors
colorscheme gruvbox

" Quick helper function
function! GetGitRoot()
  let dot_git_path = finddir('.git', '.;')
  if dot_git_path == ''
    return ''
  else
    return fnameescape(fnamemodify(dot_git_path, ':h'))
  endif
endfunction

"""""""""""""""""""""""""""
"" Custom Keybindings """""
"""""""""""""""""""""""""""

let mapleader="\<SPACE>"

" Custom basic mappings
nnoremap Y y$
nnoremap <Leader><Leader> :
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :e<CR>
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

" Netrw helpers
nnoremap <Leader>ft :Explore<CR>
nnoremap <Leader>pt :edit `=GetGitRoot()`<CR>
