-- General
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>", {desc = "Save File"})
vim.keymap.set("n", "<leader>q", ":q<CR>", {desc = "Quit Neovim"})
vim.keymap.set("n", "<esc>", ":noh<CR>", {desc = "Hide Highlight"})

-- Terminal keymaps
vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", {desc = "Open Horizontal Terminal"})
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", {desc = "Open Vertical Terminal"})
vim.keymap.set("n", "<leader>tf", ":terminal<CR>", {desc = "Open Full Terminal"})
