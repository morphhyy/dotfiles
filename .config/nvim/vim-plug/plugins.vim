call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'jiangmiao/auto-pairs'
	Plug 'itchyny/lightline.vim'
	Plug 'morhetz/gruvbox'
	Plug 'andweeb/presence.nvim'
	
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'scrooloose/nerdcommenter'
	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'navarasu/onedark.nvim'
	Plug 'tpope/vim-surround'            
	Plug 'ap/vim-css-color'
	Plug 'alvan/vim-closetag'
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'
	Plug 'jparise/vim-graphql'
call plug#end()




