
local default_theme = vim.g.colors_name or 'noctishc'

vim.keymap.set("n", "<leader>ft", function() print(vim.bo.filetype) end)
vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
    callback = function()
        if vim.bo.filetype == 'diff' then
            -- just because noctishc doesn't work well with diffs
            vim.cmd("colorscheme modus")
        else
            vim.cmd("colorscheme " .. default_theme)
        end
    end
})
