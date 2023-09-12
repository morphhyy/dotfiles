vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 25,
		-- mappings = {
		--	list = {
		--		{ key = "u", action = "dir_up" },
		--	},
		-- },
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		custom = { ".git$", "node_modules$", "^target$" },
	},
})
