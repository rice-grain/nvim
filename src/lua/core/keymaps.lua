-- General
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", {desc = "Save File"})
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", {desc = "Quit Neovim"})
vim.keymap.set("n", "<esc>", "<cmd>noh<CR>", {desc = "Hide Highlight"})

-- Terminal keymaps
vim.keymap.set("n", "<leader>th", "<cmd>split | terminal<CR>", {desc = "Open Horizontal Terminal"})
vim.keymap.set("n", "<leader>tv", "<cmd>vsplit | terminal<CR>", {desc = "Open Vertical Terminal"})
vim.keymap.set("n", "<leader>tf", "<cmd>terminal<CR>", {desc = "Open Full Terminal"})
