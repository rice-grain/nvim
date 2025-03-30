require("nvim-tree").setup({})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {desc = "Toggle File Explorer"})
