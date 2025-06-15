return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			automatic_instalation = true,
			ensure_installed = {
				"clangd",
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"ltex",
				"lua_ls",
				"ts_ls",
			},
		})
	end
}
