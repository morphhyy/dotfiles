source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/extra.vim

if (has("termguicolors"))
  set termguicolors " enable true colors support
endif

"Colorscheme
let g:onedark_config = {
	\ 'style': 'darker',
\}
colorscheme onedark

set showmatch
set ruler
set smarttab
set ts=4 sw=4
set mouse=a
syntax enable
set number
set relativenumber
set nohlsearch
set hidden
set noshowmode


" Split window
set splitbelow splitright

" NerdTree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreeIgnore = ['^node_modules$', '.git']
nmap <leader>r :NERDTreeRefreshRoot<CR>


" prettier onSave
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument


"Basic Config
"Save File
nmap <C-s> :w<CR>
"Quit
nmap <C-q> :q<CR>
" Copy all
nmap <C-a> ggvG<CR>
"NERDTreeToggle
vmap <C-_> <plug>NERDCommenterToggle<CR>gv
nmap <C-_> <plug>NERDCommenterToggle<CR>

"FZF
nmap <C-p> :Files <CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let g:dashboard_default_executive ='fzf'
" Ignore
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'


" Moving up and down
nmap <A-Down> :m .+1<CR>==
nmap <A-Up> :m .-2<CR>==
vmap <A-Down> :m '>+1<CR>gv
vmap <A-Up> :m '<-2<CR>gv


" Switching between tabs
nnoremap <C-Left> :BufferLineCyclePrev<CR>
nnoremap <C-Right> :BufferLineCycleNext<CR>


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Copying
nmap <C-a> ggVG<CR>
vmap <C-c> y<CR>

"Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'

" Copy into clipboard
set clipboard+=unnamedplus
vmap  <leader>y  "+y


" coc-extensions
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Open terminal
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

nmap <c-b> :call OpenTerminal()<CR>

lua << EOF
require("bufferline").setup{
options = {
	mode = "tabs",
	separator_style = "slant",
	diagnostics = "coc",
	}
}
require'nvim-treesitter.configs'.setup {
	ensure_installed = {"javascript"},
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = { enable = true },
	textobjects = { enable = true },
}
EOF
