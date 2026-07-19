local config_dir = vim.fn.stdpath("config") .. "/lua/after/plugin"

for _, file in ipairs(vim.fn.readdir(config_dir)) do
    if file:sub(-4) == ".lua" and file ~= "init.lua" then
        local module = "after.plugin." .. file:gsub("%.lua$", "")
        require(module)
    end
end
