require("nvim-tree").setup({})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
vim.keymap.set("n", "<leader>E", ":NvimTreeFindFile<CR>", { desc = "Focus File Explorer" })
