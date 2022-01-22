source $HOME/.config/nvim/vim-plug/plugins.vim

colorscheme gruvbox
set relativenumber

set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code
set ts=4 sw=4
set mouse=a
syntax enable


nmap <C-n> :NERDTreeToggle<CR>


let g:NERDTreeIgnore = ['^node_modules$']
command! -nargs=0 Prettier :CocCommand prettier.formatFile


"Save file"
nmap <C-s> :w<CR>
"Force Save Quit"
nmap <C-q> :wq!<CR>
"Quit"
nmap <C-w> :q<CR>
