source $HOME/.config/nvim/vim-plug/plugins.vim

"colorscheme gruvbox
colorscheme onedark

set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set ts=4 sw=4
set mouse=a
syntax enable
set number


set splitbelow splitright " Split new window default to below and right

nmap <C-n> :NERDTreeToggle<CR>


let g:NERDTreeIgnore = ['^node_modules$']
command! -nargs=0 Prettier :CocCommand prettier.formatFile


"Save file"
nmap <C-s> :w<CR>
"Quit"
nmap <C-q> :q<CR>

"NERDTreeToggle"
vmap <C-_> <plug>NERDCommenterToggle<CR>gv
nmap <C-_> <plug>NERDCommenterToggle<CR>

"fzf 
nmap <C-p> :Files <CR>

" Moving up and down
nmap <A-j> :m .+1<CR>==
nmap <A-k> :m .-2<CR>==
vmap <A-j> :m '>+1<CR>gv
vmap <A-k> :m '<-2<CR>gv

