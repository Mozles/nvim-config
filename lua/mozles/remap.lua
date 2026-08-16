vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ss", vim.cmd.PackerSync)
vim.keymap.set("n", "<leader>gg", vim.cmd.Git)
vim.keymap.set("n", "<leader>m", ":!make -B<CR>")
vim.keymap.set("n", ";", ":")
--vim.keymap.set("n", "<S-q>", ":wq!<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<S-d>","daw")
vim.keymap.set("n", "<S-c>","caw")

vim.keymap.set("n", "<leader>d", vim.cmd.bd)
vim.keymap.set("n", "<leader>n", vim.cmd.new)

vim.keymap.set("n", "<leader>k", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>/", ":noh<CR>")

