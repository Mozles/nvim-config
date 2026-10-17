local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fm', function() 
    builtin.man_pages({sections = {'1','2','3','4','5', '7'}})
end) 

vim.keymap.set('n', '<leader>fc', function()
    require('cppman').search()
end)

vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {})

vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
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
