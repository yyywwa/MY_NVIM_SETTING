---------------------------------key----------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap = vim.api.nvim_set_keymap
Opt = { noremap = true, silent = true }
---------------------------------key----------------------------------------------------

---------------------------------function----------------------------------------------------
function SetColorsCheme(options)
	if type(options) == "table" then
		options.config()
		vim.cmd("colorscheme " .. options.theme)
	else
		vim.cmd("colorscheme " .. options)
	end
end

function SetRandomColorsCheme(colorschemes)
	local index = math.random(1, #colorschemes)
	local value = colorschemes[index]
	SetColorsCheme(value)
end
---------------------------------function----------------------------------------------------
