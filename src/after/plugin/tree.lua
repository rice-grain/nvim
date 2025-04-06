require("nvim-tree").setup({
  update_focused_file = {
    enable      = true,
    update_root = true,
  }
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFile<CR>", { desc = "Focus File Explorer" })
