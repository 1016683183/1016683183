return {
	"mfussenegger/nvim-dap",
	enabled = true,
	lazy = false,
	-- 依赖插件
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
	},
	-- 插件配置
	config = function()
		-- DPA
		require("neodev").setup({
			library = { plugins = { "nvim-dap-ui" }, types = true },
		})
		require("dapui").setup() --加载DAP_UI
		require("plugins.dap.dapui_config") --DAP_UI配置
		-- DAP按键设置
		require("plugins.dap.dap_keymap")
		--语言支持加载
		require("plugins.dap.dap_language.cpp") --C语言
	end,
}
