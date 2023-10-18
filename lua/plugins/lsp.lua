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
				"lua_ls",
				"clangd",
			},
		})

		-- local on_attach = function(_, bufnr)
		-- 	local bufopts = { noremap = true, silent = true, buffer = bufnr }
		-- 	local map = vim.keymap.set --?????? why can't use vim.api.nvim_set_keymap
		-- 	map("n", "gD", vim.lsp.buf.declaration, bufopts)
		-- 	map("n", "gd", vim.lsp.buf.definition, bufopts)
		-- 	map("n", "gh", vim.lsp.buf.hover, bufopts)
		-- 	-- 查看函数相关引用
		-- 	map("n", "gr", vim.lsp.buf.references, bufopts)
		-- 	--查看完整错误信息
		-- 	map("n", "gp", vim.diagnostic.open_float, bufopts)
		-- 	--跳到上一个错误
		-- 	map("n", "gk", vim.diagnostic.goto_prev, bufopts)
		-- 	--跳到下一个错误
		-- 	map("n", "gj", vim.diagnostic.goto_next, bufopts)
		-- end

    local opts = { noremap=true, silent=true }
    vim.keymap.set('n', 'gp', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', 'gk', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', 'gj', vim.diagnostic.goto_next, opts)

    local on_attach = function(_, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    end

		local lspconfig = require("lspconfig")

		local lua_runtime_path = vim.split(package.path, ";")
		table.insert(lua_runtime_path, "lua/?.lua")
		table.insert(lua_runtime_path, "lua/?/init.lua")

		lspconfig.lua_ls.setup({
			on_attach = on_attach,
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
						path = lua_runtime_path,
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { "vim" },
					},
					workspace = {
						library = {
							--vim.api.nvim_get_runtime_file("", true),
							"${3rd}/luassert/library",
						},
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
		})

		lspconfig.clangd.setup({
			on_attach = on_attach,
		})

	end,
}
