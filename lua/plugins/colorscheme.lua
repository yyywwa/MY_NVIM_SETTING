return {
	"sainnhe/gruvbox-material",
	dependencies = {
		"folke/tokyonight.nvim",
	},
	version = "*",
	config = function()
		local colorschemes = {
			dark = {
				"gruvbox-material",
				--"tokyonight",
			},
			light = {
				"tokyonight-day",
			},
		}

		SetColorschemesByTime(colorschemes)
	end,
}
