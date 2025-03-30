require("bufferline").setup({})

vim.keymap.set("n", "<leader>c", ":bdelete<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {desc = "Next Buffer"})
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {desc = "Previous Buffer"})
