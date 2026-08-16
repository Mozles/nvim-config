require("blink.cmp").setup({
    keymap = { 
        preset = "default",
        ["<C-Space>"] = {"show"},
        ["<Tab>"] = {"select_next", "fallback"},
        ["<S-Tab>"] = {"select_prev", "fallback"},
        ["<CR>"] = { function(cmp) 
            if cmp.is_visible() and cmp.get_selected_item() then
                return cmp.accept()
            end
            return nil
        end,
        "fallback",
    },
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
        implementation = "prefer_rust",
    },
})
