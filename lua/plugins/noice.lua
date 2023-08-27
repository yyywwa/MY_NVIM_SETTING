return {
	"folke/noice.nvim",
	version = "*",
	dependencies = { "rcarriga/nvim-notify", "muniftanjim/nui.nvim" },
	config = function()
    map("n", "<leader>onn", "<cmd>Noice telescope<cr>",opt)
    map("n", "<leader>ont", "<cmd>Noice telescope<cr>",opt)
    map("n", "<leader>onm", "<cmd>messages<cr>",opt)
    map("n", "<leader>ond", "<cmd>NoiceDisable<cr>",opt)
    map("n", "<leader>one", "<cmd>NoiceEnable<cr>",opt)
		require("noice").setup({
			lsp = {
				progress = {
					enabled = false,
				},
			},
			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = true,
			},
			messages = {
				enabled = true,
				view = "notify",
				view_error = "notify",
				view_warn = "notify",
				view_history = "messages",
				view_search = "virtualtext",
			},
			health = {
				checker = false,
			},
		})
	end,
}
