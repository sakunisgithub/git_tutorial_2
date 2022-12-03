"Map Esc to jj in the insert mode
imap jj <Esc>

set guicursor=a:ver30
" :h 'guicursor' for more details

set number
set relativenumber
set nowrap
set autoindent
set smartindent
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=8

syntax on

call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

colorscheme jellybeans 
"colorscheme gruvbox

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

"Tab for autocompletion
"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

"goes to the function definition in the normal mode
nnoremap <C-f> <Plug>(coc-definition)

"jumps to the next snippet-placeholder in visual mode
let g:coc_snippet_next = '<tab>'

"jumps to the previous snippet-placeholder in visual mode
let g:coc_snippet_prev = '<s-tab>'



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
