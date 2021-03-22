
set nocompatible               " be improved, required
set number
set mouse=n
filetype off                   " required
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
call plug#begin('~/.vim/plugged')
Plug 'mxw/vim-jsx'
Plug 'yuezk/vim-js'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'christoomey/vim-system-copy'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'whatyouhide/vim-gotham'
Plug 'relastle/bluewery.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'morgsmccauley/vim-react-native-snippets'
Plug 'lewis6991/moonlight.vim'
" Ultisnips
Plug 'SirVer/ultisnips'
call plug#end()

let g:mta_filetypes = {
    \'javascript.jsx': 1,
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
\}
filetype plugin indent on       " required
"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"let g:vim_jsx_pretty_colorful_config = 1 "

"let g:prettier#autoformat = 1
"let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#jsx_bracket_same_line = 'false'
let g:loaded_matchparen = 1
map <C-f> :NERDTreeToggle<CR>
colorscheme moonlight




highlight clear LineNr
highlight clear SignColumn
command! -nargs=0 Prettier :CocCommand prettier.formatFile
  "coc.preferences.formatOnSaveFiletypes": ["js", "markdown"],
    autocmd BufWritePre *.js CocCommand prettier.formatFile
hi Pmenu ctermbg=LightBlue guibg=LightBlue

set clipboard=unnamedplus
vmap '' :w !pbcopy<CR><CR>

