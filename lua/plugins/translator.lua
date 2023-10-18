return {
	"voldikss/vim-translator",
	version = "*",
	config = function()
		vim.g.translator_sourcelang = "en"
		vim.g.translator_targetlang = "zh-CN"
		vim.g.translator_default_engines = {
			"bing",
			"google",
			"youdao",
		}
    vim.g.translator_proxy_url = "socks5://127.0.0.1:7890",
		Keymap("v", "<leader>t", "<Plug>TranslateV", Opt)
	end,
}
