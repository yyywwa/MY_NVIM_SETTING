return {
	"niuiic/translate.nvim",
	version = "*",
	dependencies = {
		"niuiic/core.nvim",
	},
	config = function()
		require("translate").setup({
			translate = {
				{
					-- use :TransToZH to start this job
					cmd = "TransToZH",
					-- shell command
					-- translate-shell is used here
					command = "trans",
					-- shell command args
					args = function(trans_source)
						-- trans_source is the text you want to translate
						return {
							"-b",
							"-e",
							"google",
							-- use proxy
							"-x",
							"http://127.0.0.1:7890",
							"-t",
							"zh-CN",
							-- you can filter translate source here
							trans_source,
						}
					end,
					-- how to get translate source
					-- selection | input | clipboard
					input = "selection",
					-- how to output translate result
					-- float_win | notify | clipboard | insert
					output = { "notify"},
				},
				{
					cmd = "TransToEN",
					command = "trans",
					args = function(trans_source)
						return {
							"-b",
							"-e",
							"google",
							"-t",
							"en",
							trans_source,
						}
					end,
					input = "input",
					output = { "notify", "clipboard" },
				},
			},
		})
		vim.keymap.set("v", "<leader>t", "<cmd>TransToZH<CR>")
		vim.keymap.set("n", "<leader>T", "<cmd>TransToEN<CR>")
	end,
}
