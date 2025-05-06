return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim"
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false,
			enable_git_status = true,
		})
	end
}
