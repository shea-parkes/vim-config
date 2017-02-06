source ~/repos/vim-plugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/repos/vim-plugins/{}')

" Update view faster, mostly for git-gutter
set updatetime=2100

let g:slime_target = "conemu"
" let g:slime_python_ipython = 1

