require("blink.cmp").setup({
    keymap = { 
        preset = "default",
        ["<C-Space>"] = {"show"},
        ["<Tab>"] = {"select_next", "fallback"},
        ["<S-Tab>"] = {"select_prev", "fallback"},
        ["<S-Enter>"] = {"accept"},
    },

    completion = {
        documentation = { auto_show = false },
        trigger = {
            show_on_trigger_character = true,
            show_on_blocked_trigger_characters = { " ", "\n", "\t" },
        },
    },

    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = {
        implementation = "rust",
    },
})
