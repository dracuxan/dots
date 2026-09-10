-- blink.cmp
pcall(function()
    require("blink.cmp").build():pwait()
end)

local blink = require("blink.cmp")

blink.setup({
    keymap = {
        preset = "none",

        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
    },

    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
})
