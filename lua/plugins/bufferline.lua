return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"moll/vim-bbye",
	},
	config = function()
		-- 配置 bufferline
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				close_command = "Bdelete", -- can be a string | function, | false see "Mouse actions"
				right_mouse_command = "bdelete!", -- can be a string | function | false, see "Mouse actions"
				left_mouse_command = "buffer", -- can be a string | function, | false see "Mouse actions"
				middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
				-- 设置 separator 样式
				separator_style = "thin",
				--separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
				--给nvim-tree留出空间
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left", },
				},
			},
		})

		-----------------------keymap---------------------------------
		-- bufferline
		-- 左右Tab切换
		map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
		map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
		-- 关闭
		map("n", "<leader>bw", ":Bdelete!<CR>", opt)
		--"moll/vim-bbye"
		map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
		map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
		map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
		-----------------------keymap---------------------------------
	end,
}
