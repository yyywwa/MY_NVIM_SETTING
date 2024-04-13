return {
	"sainnhe/gruvbox-material",
	dependencies = {
		"morhetz/gruvbox",
		"rose-pine/neovim",
		"catppuccin/nvim",
		"savq/melange-nvim",
		"folke/tokyonight.nvim",
	},
	version = "*",
	config = function()
		local function setLight()
			vim.o.background = "light"
		end
		local colorschemes = {
			dark = {
				{
					theme = "gruvbox-material",
					config = nil,
				},

				{
					theme = "tokyonight-storm",
					config = nil,
				},

				{
					theme = "gruvbox",
					config = nil,
				},

				{
					theme = "rose-pine",
					config = nil,
				},

				{
					theme = "catppuccin",
					config = nil,
				},

				{
					theme = "melange",
					config = nil,
				},
			},

			light = {
				{
					theme = "gruvbox-material",
					config = setLight,
				},
			},
		}

		SetColorScheme(colorschemes.dark[2])
	end,
}
