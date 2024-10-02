return {
	"ThePrimeagen/harpoon",
	config = function()
		local harpoon_ui = require("harpoon.ui")
		local harpoon_mark = require("harpoon.mark")

		vim.keymap.set("n", "<leader>ho", function()
			harpoon_ui.toggle_quick_menu()
		end, { desc = "Toggle Harpoon UI" })

		vim.keymap.set("n", "<leader>ha", function()
			harpoon_mark.add_file()
		end, { desc = "Add Current File to Harpoon" })

		vim.keymap.set("n", "<leader>hr", function()
			harpoon_mark.rm_file()
		end, { desc = "Remove Current File from Harpoon" })

		vim.keymap.set("n", "<leader>hc", function()
			harpoon_mark.clear_all()
		end, { desc = "Remove All Files from Harpoon" })

		vim.keymap.set("n", "<leader>1", function()
			harpoon_ui.nav_file(1)
		end, { desc = "Jump to Harpoon File 1" })

		vim.keymap.set("n", "<leader>2", function()
			harpoon_ui.nav_file(2)
		end, { desc = "Jump to Harpoon File 2" })

		vim.keymap.set("n", "<leader>3", function()
			harpoon_ui.nav_file(3)
		end, { desc = "Jump to Harpoon File 3" })

		vim.keymap.set("n", "<leader>4", function()
			harpoon_ui.nav_file(4)
		end, { desc = "Jump to Harpoon File 4" })

		vim.keymap.set("n", "<leader>5", function()
			harpoon_ui.nav_file(5)
		end, { desc = "Jump to Harpoon File 5" })
	end,
}
