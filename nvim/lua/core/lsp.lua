local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.enable({ "lua_ls", "ols", "elixir-ls", "clangd" })

-- format on save
local format_au_group = vim.api.nvim_create_augroup(
    "FormatOnSave",
    { clear = true }
)

vim.api.nvim_create_autocmd("BufWritePre", {
    group = format_au_group,

    callback = function()
        vim.lsp.buf.format({
            async = false,
        })
    end,
})
