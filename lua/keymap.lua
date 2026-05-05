vim.g.mapleader = " "

vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("i", "<C-v>", '<Esc>"+Pa')
vim.keymap.set("i", "<M-BS>", "<C-w>")
vim.keymap.set("c", "<M-BS>", "<C-w>")

-- more
vim.keymap.set("n", "<leader>d", ":Explore<CR>")
vim.keymap.set("n", "<leader>f", ":e ")
vim.keymap.set("n", "<leader><leader>", ":b ")
-- vim.keymap.set("n", "<leader>n", ":vsp<CR>:enew<CR>")

vim.keymap.set("n", "<leader>wv", "<C-w>v<C-w>h")
vim.keymap.set("n", "<leader>ws", "<C-w>s<C-w>k")
vim.keymap.set("n", "<leader>wo", "<C-w>o")
vim.keymap.set("n", "<leader>wc", "<C-w>c")
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<M-H>", ":tabprev<CR>")
vim.keymap.set("n", "<M-L>", ":tabnext<CR>")

vim.keymap.set("n", "<leader>wH", "<C-w>H")
vim.keymap.set("n", "<leader>wJ", "<C-w>J")
vim.keymap.set("n", "<leader>wK", "<C-w>K")
vim.keymap.set("n", "<leader>wL", "<C-w>L")

vim.keymap.set("n", "gn", ":cnext<CR>")
vim.keymap.set("n", "gp", ":cprev<CR>")

vim.keymap.set("n", "<leader>gl", ":vimgrep /<C-R><C-W>/gj **/*<CR>:copen<CR>")

vim.keymap.set("v", "<leader>gl", function()
	vim.cmd.normal({ "y", bang = true })
	local pat = vim.fn.escape(vim.fn.getreg('"'), [[/\]])
	vim.cmd("vimgrep /" .. pat .. "/gj **/*")
	vim.cmd.copen()
end)

local function vimgrep_prompt()
	local pat = vim.fn.input("Search: ")

	if pat == "" then
		print("Cancelled")
		return
	end

	vim.fn.setqflist({}, "r")
	vim.cmd("vimgrep /\\V" .. vim.fn.escape(pat, [[\/]]) .. "/gj **/*")
	vim.cmd.copen()
end

vim.keymap.set("n", "<leader>gg", vimgrep_prompt)

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
