set number
set noerrorbells
set smartindent
set nu
set smartcase
set nobackup
set noswapfile
set incsearch


call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug  'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jiangmiao/auto-pairs'

call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
let g:netrw_banner=0
let g:netrw_browse_split = 4
let g:netrw_winsize=20

source $HOME/.config/nvim/plugged/coc.vim

let g:coc_global_extensions=['coc-snippets','coc-json', 'coc-eslint', 'coc-prettier']
inoremap kj <Esc>



inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap Y y$
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
