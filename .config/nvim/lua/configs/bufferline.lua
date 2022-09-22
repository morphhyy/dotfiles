require("bufferline").setup({
	options = {
		mode = "buffers",
		numbers = "ordinal",
		buffer_close_icon = "",
		modified_icon = "",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 18,
		max_prefix_length = 13,
		tab_size = 20,
		separator_style = "thin",
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		indicator = { style = "icon", icon = "▎" },
		sort_by = "id",
		color_icons = true,
		offsets = {
			{ filetype = "NvimTree", text = "", padding = 1 },
			{ filetype = "Outline", text = "", padding = 1 },
			{ filetype = "File Explorer", text = "", padding = 1 },
		},
	},
})
