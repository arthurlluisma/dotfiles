return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local autotag = require("nvim-ts-autotag")

		autotag.setup({
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		})

		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"toml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"gitignore",
				"query",
				"vimdoc",
				"cpp",
				"python",
				"asm",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
