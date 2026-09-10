-- formatting
vim.keymap.set("n", "<C-s>", ":write<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:write<CR>")
vim.keymap.set("n", "qq", ":quit<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>r", ":restart<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- navigation
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")

-- split windows
vim.keymap.set("n", "<C-w>v", ":vsplit<CR>")
vim.keymap.set("n", "<C-w>s", ":split<CR>")

-- files
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")

-- snacks
vim.keymap.set("n", "<A-\\>", function() require("snacks").explorer() end)
