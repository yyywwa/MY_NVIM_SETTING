return {
	"williamboman/mason.nvim",
	version = "*",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
			},
		})

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "gp", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "gk", vim.diagnostic.goto_prev, opts)
		vim.keymap.set("n", "gj", vim.diagnostic.goto_next, opts)

		local on_attach = function(_, bufnr)
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, bufopts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
		end

		local lspconfig = require("lspconfig")

		local lua_runtime_path = vim.split(package.path, ";")
		table.insert(lua_runtime_path, "lua/?.lua")
		table.insert(lua_runtime_path, "lua/?/init.lua")

		lspconfig.clangd.setup({
			on_attach = on_attach,
		})

		lspconfig.pylsp.setup({
			on_attach = on_attach,
		})

		vim.api.nvim_create_augroup("set_filetype_for_stdlib", {})
		vim.api.nvim_create_autocmd("BufRead", {
			group = "set_filetype_for_stdlib",
			pattern = "D:/Vs/VC/Tools/MSVC/14.39.33519/include/*",
			command = "set ft=cpp",
		})

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = {
							"vim",
							"require",
						},
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})
	end,
}
