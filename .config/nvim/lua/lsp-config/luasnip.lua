local types = require("luasnip.util.types")

require("luasnip").setup({})

-- Loading any vscode snippets from plugins
require("luasnip.loaders.from_vscode").lazy_load()

-- Allow jsx and tsx to use js snippets
require("luasnip").filetype_extend("javascript", { "javascriptreact", "typescriptreact" })
