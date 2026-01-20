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

		mason_lspconfig.setup({
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
			end,
			["spyglassmc_language_server"] = function()
				nvim_lsp["spyglassmc_language_server"].setup({
					root_dir = function(fname)
					return lspconfig.util.root_pattern("pack.mcmeta", "data")(fname)
						or lspconfig.util.root_pattern(".git")(fname)
				end,
				})
			end,
		})

		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})
	end
}
