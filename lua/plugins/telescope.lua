return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	version = "*",

	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				-- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
				initial_mode = "normal",
			},
			pickers = {
				-- 内置 pickers 配置
				find_files = {
					-- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
					theme = "dropdown",
				},
			},
			extensions = {
				-- 扩展插件配置
			},
		})
		local builtin = require("telescope.builtin")
		local map = vim.keymap.set --?????? why can't use vim.api.nvim_set_keymap
		map("n", "<leader>ff", builtin.find_files, opt)
		map("n", "<leader>fg", builtin.live_grep, opt)
		map("n", "<leader>fb", builtin.buffers, opt)
		map("n", "<leader>fh", builtin.help_tags, opt)
	end,
}
