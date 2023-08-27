return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,

	nvim_tree_key_list = {
		-- 打开文件或文件夹
		{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
		-- 分屏打开文件
		{ key = "v", action = "vsplit" },
		{ key = "h", action = "split" },
		-- 显示隐藏文件
		{ key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
		{ key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
		-- 文件操作
		{ key = "<F5>", action = "refresh" },
		{ key = "a", action = "create" },
		{ key = "d", action = "remove" },
		{ key = "r", action = "rename" },
		{ key = "x", action = "cut" },
		{ key = "c", action = "copy" },
		{ key = "p", action = "paste" },
		{ key = "s", action = "system_open" },
	},
}
