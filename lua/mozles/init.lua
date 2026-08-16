require("mozles.remap")
require("mozles.packer")

local config_dir = vim.fn.stdpath("config") .. "/lua/mozles/plugins"

for _, file in ipairs(vim.fn.readdir(config_dir)) do
    if file:sub(-4) == ".lua" and file ~= "init.lua" then
        local module = "mozles.plugins." .. file:gsub("%.lua$", "")
        require(module)
    end
end
--
vim.cmd("set number")
vim.cmd("set rnu")

-- vim.opt.guicursor = ""
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

--vim.opt.hsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("colorscheme modus")

