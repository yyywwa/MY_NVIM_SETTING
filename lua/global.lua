---------------------------------key----------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap = vim.api.nvim_set_keymap
Opt = { noremap = true, silent = true }
---------------------------------key----------------------------------------------------

---------------------------------function----------------------------------------------------

function SetColorSchemeByTime(colorscheme)
	local time = tonumber(os.date("%H"))
	if time > 18 or time < 9 then
		SetRandomColorScheme(colorscheme.dark)
	else
		SetRandomColorScheme(colorscheme.light)
	end
end

function SetColorScheme(options)
  if options ~= nil then
    if options.config ~= nil then
      options.config()
    end
    vim.cmd("colorscheme " .. options.theme)
  end
end

function SetRandomColorScheme(colorschemes)
	local index = math.random(1, #colorschemes)
	local value = colorschemes[index]
	SetColorScheme(value)
end
---------------------------------function----------------------------------------------------
