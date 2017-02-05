source ~/repos/vim-plugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/repos/vim-plugins/{}')
" Confirm plugins were found with `:let g:` (Tim Pope leaves breadcrumbs for his plugins here)

let g:slime_target = "conemu"
let g:slime_python_ipython = 1
