-- Jack Symonds init.lua


vim.opt.shortmess = "IfilnxtToO"

-- my configs
vim.cmd.syntax("enable")
vim.opt.compatible = false
vim.opt.number = true
vim.opt.incsearch = true
vim.opt.ruler = true
vim.opt.linebreak = true
-- vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.swapfile = false
vim.opt.smartcase = true
vim.opt.fillchars:append({ vert = " " })
vim.opt.scrolloff = 3
vim.opt.wildmenu = true
require("ginit")
require("keymap")
-- vim.opt.colorcolumn = "80"

if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
	vim.keymap.set("n", "<leader>i", ":e ~/vimfiles/<CR>")
elseif vim.fn.has("mac") == 1 then
	vim.keymap.set("n", "<leader>i", ":e ~/.config/nvim/<CR>")
	vim.keymap.set("i", "<D-v>", '<Esc>"+Pa')
	vim.keymap.set("n", "<D-v>", '<C-v>')
elseif vim.fn.has("unix") == 1 then
	vim.keymap.set("n", "<leader>i", ":e ~/.config/nvim/<CR>")
end

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 1
vim.g.netrw_altv = 1
vim.g.netrw_sort_options = "i"
vim.g.netrw_sort_direction = "normal"
vim.g.netrw_sort_by = "exten"
-- vim.g.netrw_sort_sequence = [[[/]$,\c$,\h$,\txt$,*]]

-- windows
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.packpath:prepend{ vim.fn.stdpath("config") }

