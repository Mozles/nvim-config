local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fm', builtin.man_pages , {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set("v", "<leader>fg", function()
  local start_pos = vim.fn.getpos("v")
  local end_pos = vim.fn.getpos(".")

  local lines = vim.fn.getregion(start_pos, end_pos)

  builtin.grep_string({
    search = table.concat(lines, "\n"),
  })
end)
