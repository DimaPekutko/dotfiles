set smartindent
set number
set tabstop=4
set expandtab
set shiftwidth=4
set noswapfile
set mouse=a

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'sickill/vim-monokai'

call plug#end()

let g:fzf_layout = { 'down': '~40%' } 

set modifiable

colorscheme calmar256-dark

" Shortcuts
" common
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><leader>w :w<CR>
nnoremap <silent><leader>q :bdelete!<CR>
nnoremap <silent><leader>t :terminal<CR>
nnoremap <silent><leader>s :vsplit<CR>
nnoremap <silent><leader>b :ls<CR>
nnoremap <silent><leader>c @:<CR>
nnoremap <silent><leader>a :bprevious<CR>
nnoremap <silent><leader>d :bnext<CR>
nnoremap <silent><C-t> :NERDTreeToggle<CR>
nnoremap <silent><C-n> :NERDTree<CR>
tnoremap <Esc> <C-\><C-n>
" autocomplete
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nmap <silent> gd :call CocAction('jumpDefinition')<CR>


" 'Most Recent Files' number
let g:startify_files_number           = 18

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ ]
