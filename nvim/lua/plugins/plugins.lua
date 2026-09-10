vim.pack.add({
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/christoomey/vim-tmux-navigator" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/datsfilipe/vesper.nvim" },
    { src = "https://github.com/rmagatti/auto-session" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/nvim-mini/mini.pick" },
    { src = "https://github.com/folke/snacks.nvim" },
    { src = "https://github.com/saghen/blink.lib" },
    { src = "https://github.com/saghen/blink.cmp" },
})

require("nvim-web-devicons").setup()
require("auto-session").setup()
require("plugins.blink")
require("plugins.snacks")
require("plugins.mason")

-- mini.pick
require("mini.pick").setup()
