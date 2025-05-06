return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
        	"folke/neodev.nvim",
	},
	config = function() 
		local nvim_lsp = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		mason_lspconfig.setup_handlers({
			function(server)
				nvim_lsp[server].setup({
					capabilities = capabilities
				})
			end,
			["clangd"] = function()
				nvim_lsp["clangd"].setup({
					capabilities = capabilities,
					cmd = { "clangd", "--compile-commands-dir=." },
				})
			end
		})
	end
}
