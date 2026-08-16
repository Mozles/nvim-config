vim.lsp.config("lua_ls", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { '.git' },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.config("ols", {
    cmd = { "ols" },
    filetypes = { "odin" },
    root_markers = { '.git' },
})

vim.lsp.config("pylsp", {
    cmd = { "pylsp" },
    filetypes = { "python" },
    root_markers = { '.git' },
})

vim.lsp.config("clangd", {
    cmd = { "clangd" },
    filetypes = { "c", "h" },
    settings = {
        args = { "-std=c99", "-Wall", "-Wextra", "-Iinclude" },
    },
    root_markers = { '.git' },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("ols")
vim.lsp.enable("clangd")
vim.lsp.enable("pylsp")
