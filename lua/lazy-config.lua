local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	--导入(配置超过10行)
	{
		import = "plugins",
	},

	--下面的utf-8/linux/ 标志
	{
		"nvim-lualine/lualine.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup()
		end,
	},

	--跳出区域
	{
		"abecodes/tabout.nvim",
		version = "*",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"hrsh7th/nvim-cmp",
		},
		config = true,
	},

  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	--括号自动补全
	{
		"windwp/nvim-autopairs",
		version = "*",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},


	--终端 terminal
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
      require("toggleterm").setup {
        size = 10,
        open_mapping = [[<C-\>]],
        start_in_insert = true,
        direction = "float",
        shell = "pwsh.exe",
        float_opts = {
          border = "curved",
          width = math.ceil(vim.o.columns*0.8),
          height = math.ceil(vim.o.columns*0.2)
        }
      }
		end,
	},
})
