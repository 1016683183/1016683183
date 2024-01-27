local dap = require("dap") -- DPA语言协议配置（c语言）
dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = "/home/LZC/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}
dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = true,
	},
}
setupCommands = {
	{
		text = "-enable-pretty-printing",
		description = "enable pretty printing",
		ignoreFailures = false,
	},
}
-- Re-using configuration
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
