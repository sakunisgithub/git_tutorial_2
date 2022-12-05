"Mappings


"Map Esc to jj in the insert mode
imap jj <Esc>









"Map Ctrl + w to F7 in insert mode and normal mode
"Ctrl + w is heavily used in splitting nvim screens and navigating in between them
imap <F7> <C-w>
nmap <F7> <C-w>






















syntax on
































"the sets


"to create vertical line cursor in all modes
set guicursor=a:ver30
" :h 'guicursor' for more details


"line number
set number
set relativenumber




"indent
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab



"for better scrolling exprience
set scrolloff=8


"mouse compatibiliy in all modes
"set mouse=a


"vertical colorcolumn
"set colorcolumn=100


"coloumn at the left side of the screen
set signcolumn=yes


"set a line at which the cursor is present
set cursorline



"text wrapping
set nowrap
set textwidth=0




"don't hightlight after the search of one word is complete
set nohlsearch

















































































"the plugins



call plug#begin('~/.config/nvim/plugged')

"colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'


Plug 'tpope/vim-surround'


Plug 'tpope/vim-commentary'


Plug 'mg979/vim-visual-multi'


Plug 'neoclide/coc.nvim'


Plug 'jiangmiao/auto-pairs'


Plug 'honza/vim-snippets'


Plug 'ThePrimeagen/vim-be-good'


Plug 'preservim/tagbar'


Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'



Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }
"sudo apt-get install ripgrep ----- to use live_grep and grep_string
":Telescope <tab> ------ to see all the possible options






call plug#end()



































"colorschemes must be after the plugings(in case they are imported from the plugins)
colorscheme jellybeans 
"colorscheme gruvbox































"Toggle tagbar by F2
"hit Ctrl + w followed by l to set the cursor in the tagbar and navigate there by hjkl 
"Hit enter to go to any function
nnoremap <F2> :TagbarToggle<cr>























"Toggle nerdtree
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>






















"Tab for autocompletion
"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


























"goes to the function definition in the normal mode
nnoremap <C-f> <Plug>(coc-definition)
























"snippets



"jumps to the next snippet-placeholder in visual mode
let g:coc_snippet_next = '<tab>'

"jumps to the previous snippet-placeholder in visual mode
let g:coc_snippet_prev = '<s-tab>'


































"tab for navigation through suggestions and enter for completing the selected suggestion ( copied from neoclide/coc.nvim github page )



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













































"nerdtree-git-plugin (copied all the following form Xuyuanp/nerdtree-git-plugin github page)
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


let g:NERDTreeGitStatusShowClean = 1 " default: 0

let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0









































" Find files using Telescope command-line sugar.
nnoremap <F9> <cmd>Telescope find_files<cr>
nnoremap <F10> <cmd>Telescope live_grep<cr>
nnoremap <F11> <cmd>Telescope buffers<cr>
nnoremap <F12> <cmd>Telescope help_tags<cr>
