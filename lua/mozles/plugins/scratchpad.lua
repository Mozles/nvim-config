
local bufid = -1
local winid = -1

function ScratchPad()
    if vim.api.nvim_win_is_valid(winid) then
        vim.api.nvim_win_hide(winid)
    else
        local filetype = vim.bo.filetype
        if not vim.api.nvim_buf_is_valid(bufid) then
            bufid = vim.api.nvim_create_buf(true, true)
        end
        winid = vim.api.nvim_open_win(bufid, true, {relative='cursor', row=1, col=0,
            width=50, height=15, style='minimal', border='single', title='scratchpad'})
        vim.cmd(string.format("set syntax=%s", filetype))
    end
end
