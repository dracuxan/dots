require("vesper").setup({
    transparent = true,
    italics = {
        comments = true,
        keywords = true,
        functions = true,
        strings = true,
        variables = true,
    },
})

vim.cmd("colorscheme vesper")

local hl_groups = {
    "Normal", "NormalNC", "SignColumn", "EndOfBuffer", "Folded", "FoldColumn", "NormalFloat",
    "WinSeparator", "SnacksPicker", "SnacksPickerBorder", "SnacksNormal", "SnacksBackdrop",
    "SnacksPickerList", "SnacksPickerInput",
}

for _, group in ipairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, {
        bg = "NONE",
        ctermbg = "NONE",
    })
end
