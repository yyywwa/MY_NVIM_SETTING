return {
	"sainnhe/gruvbox-material",
	dependencies = {
		"morhetz/gruvbox",
		"rose-pine/neovim",
    "catppuccin/nvim",
	},
	version = "*",
	config = function()
		local function setLight()
			vim.o.background = "light"
		end local colorschemes = { dark = {
				"gruvbox-material",
				"gruvbox",
				"rose-pine",
        "catppuccin"
			},
			light = {
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
          theme = "catppuccin-latte",
          config = function ()
          end
        },
			},
		}

    SetColorsCheme(colorschemes.light[4])
	end,
}
