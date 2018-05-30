call plug#begin('~/.config/vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'Townk/vim-autoclose'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup'
Plug 'honza/vim-snippets'
Plug 'isRuslan/vim-es6'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ianks/vim-tsx'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'chriskempson/base16-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'jiangmiao/auto-pairs'
call plug#end()

syntax on
filetype plugin indent on
let g:enable_bold_font = 1
let g:enable_italic_font = 1
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

:set synmaxcol=300
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set number
:set laststatus=2
:set incsearch
:set cursorline
:set omnifunc=csscomplete#CompleteCSS
:set formatoptions-=cro
autocmd BufNewFile,BufRead *.scss       set ft=scss.css
au FileType typescript setl sw=4 sts=4 et

" Remap leader key to space
let mapleader = "\<space>"
" NerdTree bindings
nnoremap <leader>n :NERDTree ~/Sites<CR>
nnoremap <leader>r :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
" Delete value of CSS property
nnoremap <leader>; 02Wdv$i
" Alphabetically Sort within {
nnoremap <leader>s vi{:sort<CR>

" Ignore files and folders in Ctrl+P
:set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip

let g:html_indent_tags = 'p\|li\|nav'

" Remap jk to save and exit insert mode
:imap jk <Esc>:w<CR>
:set timeout timeoutlen=100

" Different cursors in different modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
