return {
	"sainnhe/gruvbox-material", dependencies = {
		"morhetz/gruvbox",
		"rose-pine/neovim",
		"catppuccin/nvim",
		"savq/melange-nvim",
	},
	version = "*",
	config = function()
		local function setLight()
			vim.o.background = "light"
		end
		local colorschemes = {
			dark = {
				"gruvbox-material",
				"gruvbox",
				"rose-pine",
				"catppuccin",
				"melange",
			},

			light = {
				"catppuccin-latte",

				{
					theme = "gruvbox",
					config = setLight,
				},

				{
					theme = "gruvbox-material",
					config = setLight,
				},

				{
					theme = "rose-pine",
					config = setLight,
				},
				{
					theme = "melange",
					config = setLight,
				},
			},
		}

		SetColorsCheme(colorschemes.light[3])
	end,
}
