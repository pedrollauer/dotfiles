set number
set noerrorbells
set smartindent
set nu
set smartcase
set nobackup
set noswapfile
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab 	

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug  'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mrtazz/simplenote.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
let g:netrw_banner=0
let g:netrw_browse_split = 4
let g:netrw_winsize=20

let g:SimplenoteUsername = "pedrolemos@live.com"
let g:SimplenotePassword = "E2,71828e"
nmap <F8> :TagbarToggle<CR>

source $HOME/.config/nvim/plugged/coc.vim

let g:coc_global_extensions=['coc-snippets','coc-json', 'coc-eslint', 'coc-prettier']
inoremap kj <Esc>


nmap <F6> :NERDTreeToggle<CR>
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

nmap <M-Right> :vertical resize +1<CR>
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>
