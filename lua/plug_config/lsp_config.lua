require("mason").setup()
require("mason-lspconfig").setup({
	--  ensure_installed = { "sumneko_lua"}
	ensure_installed = { "lua_ls" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

-- Python
require("lspconfig").pyright.setup({})
-- R
require("lspconfig").r_language_server.setup({})
