local original = print
PrintBuffer = vim.api.nvim_create_buf(false, true)
local i = 0

_G.print = function(...)
    local args = { ... }
    local msg = table.concat(vim.tbl_map(tostring, args), "\t")
    vim.api.nvim_buf_set_lines(PrintBuffer, i, i, false, { msg })
    original(msg)
end

function ShowPrintBuffer()
       vim.api.nvim_open_win(PrintBuffer, true, {split="right", width=40})
end
