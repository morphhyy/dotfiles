local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local sources = {
	formatting.prettierd,
	formatting.autopep8,
	formatting.stylua,
	formatting.clang_format,
	formatting.phpcsfixer,
	formatting.gofmt,
	null_ls.builtins.diagnostics.solhint,
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
					vim.lsp.buf.format({
						bufnr = bufnr,
						timeout_ms = 5000,
					})
				end,
			})
		end
	end,
})
