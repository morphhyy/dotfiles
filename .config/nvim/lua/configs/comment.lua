local comment, api = pcall(require, "Comment.api")
local map = vim.keymap.set
if comment then
	map("n", "<C-_>", function()
		api.toggle.linewise()
	end, def)

	map("v", "<C-_>", function()
		api.toggle.blockwise()
	end, def)

	map("x", "<C-_>", function()
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<esc>", true, false, true), "nx", false)
		api.toggle.blockwise(vim.fn.visualmode())
	end, def)
end
