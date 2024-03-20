return {
	-- 启用插件,并配置
	-- 中文分词插件
	{
		"noearc/jieba.nvim",
		lazy = false,
		dependencies = { "noearc/jieba-lua" },
		config = function()
			vim.keymap.set("n", "cw", ":lua require'jieba_nvim'.change_w()<CR>", { noremap = false, silent = true })
			vim.keymap.set("n", "dw", ":lua require'jieba_nvim'.delete_w()<CR>", { noremap = false, silent = true })
			vim.keymap.set(
				"n",
				"<leader>w",
				":lua require'jieba_nvim'.select_w()<CR>",
				{ noremap = false, silent = true }
			)
		end,
	},
	{ "nvim-neotest/nvim-nio"},
	--DAP插件
	{ require("plugins.dap.dap_init") },
	-- markdown表格插件
	{ "dhruvasagar/vim-table-mode",   lazy = false },
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
				--"markdown",
				"markdown_inline",
				"python",
				"verilog",
				"vim",
				"vimdoc",
			},
		},
	},
}
