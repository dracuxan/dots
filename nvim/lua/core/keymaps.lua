-- formatting
vim.keymap.set("n", "<C-s>", ":write<CR>")
vim.keymap.set("n", "<C-q>", ":qa<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:write<CR>")
vim.keymap.set("n", "qq", ":quit<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>r", ":restart<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { silent = true })

-- navigation
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
vim.keymap.set('i', '<A-h>', '<Left>')
vim.keymap.set('i', '<A-j>', '<Down>')
vim.keymap.set('i', '<A-k>', '<Up>')
vim.keymap.set('i', '<A-l>', '<Right>')

-- split windows
vim.keymap.set("n", "<C-w>v", ":vsplit<CR>")
vim.keymap.set("n", "<C-w>s", ":split<CR>")

-- files
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")

-- snacks
vim.keymap.set("n", "<A-\\>", function() require("snacks").explorer() end)

-- buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>x", ":bdelete<CR>")
vim.keymap.set("n", "<leader>b", function() MiniPick.builtin.buffers() end)

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })

vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "Document symbols" })
vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, { desc = "Workspace symbols" })

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic", })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic list", })
