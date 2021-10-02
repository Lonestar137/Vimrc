
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif



syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=green

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'townk/vim-autoclose'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox 
set background=dark
highlight NORMAL ctermbg=NONE

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files - oc --exclude-standalone']
let mapleader=" "
let g:netrw_browse_split=2
let g:netrw_banner=0

let g:ctrp_use_caching=0
let g:netrw_winsize = 25

"turn hybrid line numbers on
:set number relativenumber
:set nu rnu


"|------------Remaps--------------|
let mapleader = ' ' 

"Moving updown quickly
noremap <tab> }
noremap <backspace> {

"Moving windows
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k

"Resizing windows
noremap <leader>a :vertical resize +10<CR>
noremap <leader>f :vertical resize -10<CR>
noremap <leader>d :resize +10<CR>
noremap <leader>s :resize -10<CR>

"Center for find and join
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

"Undo breaks
"   You can add more keybinds here to have undo break at whatever. Rn it
"   breaks at ,.! and ?
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap [ [<c-g>u
inoremap { {<c-g>u
inoremap ( (<c-g>u

"Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Nerdtree
noremap <leader>n :NERDTreeToggle<CR>

"Tabs
noremap <leader>t :tab split<CR> 
