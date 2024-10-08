return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>go", vim.cmd.Git)
	end,
}
