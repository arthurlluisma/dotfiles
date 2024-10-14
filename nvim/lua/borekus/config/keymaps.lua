vim.g.mapleader = " "

-- explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file explorer" })

-- change :w and :q keymaps
vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>", { desc = "Quit Neovim" })

-- press 'H', 'L' to jump to start/end of a line (first/last char)
vim.keymap.set("n", "L", "$", { desc = "Jump to start of line" })
vim.keymap.set("n", "H", "^", { desc = "Jump to end of line" })

-- move highlighted block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted block down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted block up" })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- keep cursor in the middle when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy-pasting the same terms
vim.keymap.set("x", "<leader>p", [["_dP]])

-- replace all instances of the word on the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- pane switching
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
