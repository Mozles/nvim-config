local original = print
PrintBuffer = vim.api.nvim_create_buf(false, true)
local i = 0

_G.print = function(...)
    local args = { ... }
    local msg = table.concat(vim.tbl_map(tostring, args), "\t")
    vim.api.nvim_buf_set_lines(PrintBuffer, i, i, false, { msg })
end

print(string.format("Print log buffer created at %d", PrintBuffer))
print("Every print command after this point will be written here")

function ShowPrintBuffer()
       vim.api.nvim_open_win(PrintBuffer, true, {split="right", width=40})
end
