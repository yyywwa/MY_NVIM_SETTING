--下面的utf-8/linux/ 标志
return {
	"nvim-lualine/lualine.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup()
	end,
}
