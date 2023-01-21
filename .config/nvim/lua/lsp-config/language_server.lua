local opts = { noremap = true, silent = true }
local nvim_lsp = require("lspconfig")
local servers = { "pyright", "tsserver", "emmet_ls", "solidity", "tailwindcss", "cssls", "jsonls" }
local keymap = vim.keymap.set

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
	keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
	keymap("n", "gr", "<cmd>Lspsaga rename<CR>")
	keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
	keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
	keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
	keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
	keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
	keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
	keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
	keymap("n", "[E", function()
		require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
	end)
	keymap("n", "]E", function()
		require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
	end)
	keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>")
	keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lsp_flags = {
	debounce_text_changes = 150,
}

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		flags = lsp_flags,
	})
end

require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})
