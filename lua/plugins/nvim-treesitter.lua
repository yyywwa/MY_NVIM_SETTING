return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
		"numToStr/Comment.nvim",
	},

	version = "*",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"c",
				"cpp",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})

		-- 开启 Folding
		vim.wo.foldmethod = "expr"
		vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
		vim.wo.foldlevel = 99
	end,
}
