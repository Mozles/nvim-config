
bufid = -1
winid = -1

function ScratchPad()
    if vim.api.nvim_win_is_valid(winid) then
        vim.api.nvim_win_hide(winid)
    else
        local filetype = vim.bo.filetype
        if not vim.api.nvim_buf_is_valid(bufid) then
            bufid = vim.api.nvim_create_buf(false, true)
        end
        winid = vim.api.nvim_open_win(bufid, true, {relative='cursor', row=1, col=0,
           width=50, height=15, style='minimal', border='single', title='scratchpad'})
        vim.bo[bufid].syntax = filetype
        print(string.format("buffer id: %d window id: %d", bufid, winid))
    end
end

vim.api.nvim_create_autocmd({'WinLeave'}, {
    callback = function()
        if vim.api.nvim_get_current_win() == winid then
            vim.api.nvim_win_hide(winid)
        end
    end})
