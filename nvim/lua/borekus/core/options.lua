-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- enable auto-indenting and set indent to spaces
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

-- enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- enable mouse mode
vim.opt.mouse = "a"

-- decrease updatetime
vim.opt.updatetime = 250

-- set completeopt for completion
vim.opt.completeopt = { "menuone", "noselect", "popup" }

-- ennable persistent undo history
vim.opt.undofile = true

-- line wrap
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- terminal colors
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end

-- scrolloff
vim.opt.scrolloff = 8

-- colorcolumn
vim.opt.colorcolumn = "80"

-- swapfile
vim.opt.swapfile = false

-- cursor line
vim.opt.cursorline = true
