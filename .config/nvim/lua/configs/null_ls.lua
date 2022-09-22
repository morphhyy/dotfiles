local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local sources = {
	-- formatting.prettier,
	formatting.autopep8,
	formatting.stylua,
	-- null_ls.builtins.diagnostics.solhint,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
