source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/extra.vim
colorscheme onedark

set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set ts=4 sw=4
set mouse=a
syntax enable
set number
set termguicolors

let g:node_client_debug = 1
set splitbelow splitright " Split new window default to below and right

nmap <C-n> :NERDTreeToggle<CR>


let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nmap <leader>r :NERDTreeRefreshRoot<CR>

" prettier onSave
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc-extensions
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Save file
nmap <C-s> :w<CR>
"Quit"
nmap <C-q> :q<CR>

"NERDTreeToggle"
vmap <C-_> <plug>NERDCommenterToggle<CR>gv
nmap <C-_> <plug>NERDCommenterToggle<CR>


"fzf 
nmap <C-p> :Files <CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Ignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" Moving up and down
nmap <A-Down> :m .+1<CR>==
nmap <A-Up> :m .-2<CR>==
vmap <A-Down> :m '>+1<CR>gv
vmap <A-Up> :m '<-2<CR>gv

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Open terminal
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nmap <c-b> :call OpenTerminal()<CR>
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Switching between tabs
nmap <C-Left> :tabp<CR>
nmap <C-Right> :tabn<CR>

" Copy into clipboard
set clipboard+=unnamedplus
vmap  <leader>y  "+y

if (has("termguicolors"))
  set termguicolors " enable true colors support
endif

