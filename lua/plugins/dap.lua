return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
	},
	version = "*",
	config = function()
		local dap = require("dap")

		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = "/home/ike/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
		}

		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "cppdbg",
        request = "launch",
				MIMode = "gdb",
				miDebuggerPath = "/usr/bin/gdb",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopAtEntry = true,
			},
		}

		dap.configurations.c = dap.configurations.cpp

		dap.configurations.rust = dap.configurations.cpp

	end,
}
