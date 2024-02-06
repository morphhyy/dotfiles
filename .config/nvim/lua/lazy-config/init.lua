local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"github/copilot.vim",
	"wbthomason/packer.nvim",
	"navarasu/onedark.nvim",
	"andweeb/presence.nvim",
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
	},
	"akinsho/toggleterm.nvim",
	"nvim-lualine/lualine.nvim",
	-- "rcarriga/nvim-notify",
	{
		"akinsho/bufferline.nvim",
		version = "*",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"nvim-lua/plenary.nvim",
	-- Requires plenary
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	"jose-elias-alvarez/null-ls.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	"windwp/nvim-autopairs",
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	},
	"rafamadriz/friendly-snippets",
	-- LSP
	"williamboman/mason-lspconfig.nvim",
	{ "williamboman/mason.nvim" },
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp", -- Autocompletion plugin
	"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
	"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
	"L3MON4D3/LuaSnip", -- Snippets plugin
	"onsails/lspkind.nvim",
	"mg979/vim-visual-multi",
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
	},
}

local opts = {}
require("lazy").setup(plugins, opts)
