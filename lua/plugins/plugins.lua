return {
	-- 启用插件,并配置
	-- 主题插件
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	--DAP插件
	{ require("plugins.dap.dap_init") },
	-- 语法高亮插件
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"comment",
				"css",
				"c",
				"diff",
				"gitcommit",
				"gitignore",
				"gitattributes",
				"git_rebase",
				"hcl",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"json5",
				"jsonc",
				"jsonnet",
				"lua",
				"make",
				--				"markdown",
				--				"markdown_inline",
				"python",
				"verilog",
				"vim",
				"vimdoc",
			},
		},
	},
}
