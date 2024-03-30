return {
	"voldikss/vim-translator",
	version = "*",
	config = function()
		vim.g.translator_sourcelang = "en"
		vim.g.translator_targetlang = "zh-CN"
    vim.g.translator_default_engines = {"google"}
		Keymap("v", "<leader>t", "<Plug>TranslateV", Opt)
	end,
}
