vim.keymap.set("i", "<C-s>", "<c-o>:w<CR>", {})
vim.keymap.set("n", "<C-s>", ":w<CR>", {})

vim.keymap.set("n", "<C-Up>", "ddkP", {})
vim.keymap.set("n", "<C-Down>", "ddp", {})

-- telescope

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, {})

-- Neotree

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

-- Lsp

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({"n", "v"}, "<leader>ca" , vim.lsp.buf.code_action, {})

-- none-ls

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
