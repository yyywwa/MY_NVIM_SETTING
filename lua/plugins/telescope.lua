return {
  -- you need install fd and ripgrep
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
		local Keymap = vim.keymap.set --?????? why can't use vim.api.nvim_set_keymap
		Keymap("n", "<leader>ff", builtin.find_files, Opt)
		Keymap("n", "<leader>fg", builtin.live_grep, Opt)
		Keymap("n", "<leader>fb", builtin.buffers, Opt)
		Keymap("n", "<leader>fh", builtin.help_tags, Opt)
	end,
}
