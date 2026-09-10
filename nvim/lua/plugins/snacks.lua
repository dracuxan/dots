-- snacks.nvim
local snacks = require("snacks")

snacks.setup({
    explorer = {
        enabled = true,
    },
    picker = {
        enabled = true,
        sources = {
            explorer = {
                layout = {
                    layout = {
                        position = "right",
                        width = 30,
                    },
                },
            },
        },
    },
})
