require("bufferline").setup({})

vim.keymap.set("n", "<leader>c", "<cmd>bdelete<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {desc = "Next Buffer"})
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {desc = "Previous Buffer"})
