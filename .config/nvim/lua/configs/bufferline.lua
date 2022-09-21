require("bufferline").setup({
	options = {
		-- mode = "tabs",
		numbers = "ordinal",
		buffer_close_icon = "",
		modified_icon = "",
		close_icon = "",
		max_name_length = 18,
		max_prefix_length = 13,
		tab_size = 20,
		separator_style = "thin",
		diagnostics = "nvim_lsp",
		indicator = {
			style = "underline",
		},
		--color_icons = true,
		offsets = {
			{ filetype = "NvimTree", text = "", padding = 1 },
			{ filetype = "Outline", text = "", padding = 1 },
		},
	},
})
