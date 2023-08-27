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
		vim.keymap.set("n", "<leader>ff", builtin.find_files, opt)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, opt)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, opt)
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, opt)
	end,
}
