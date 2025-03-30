require("toggleterm").setup({
  size = 20,
  open_mapping = [[<c-\>]],
  direction = 'horizontal',
  float_opts = { border = 'curved' }
})

vim.keymap.set("n", "<leader>tp", ":ToggleTerm direction=float<CR>", {desc = "Open Floating Terminal"})
vim.keymap.set({ "n", "v", "i" }, "<A-v>", ":ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-h>", ":ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-i>", ":ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-t>", ":ToggleTerm direction=tab<CR>", { desc = "Open Full Terminal" })

vim.keymap.set("t", "<A-v>", "<C-\\><C-n>:ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" })
vim.keymap.set("t", "<A-h>", "<C-\\><C-n>:ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set("t", "<A-i>", "<C-\\><C-n>:ToggleTerm direction=float<CR>",   { desc = "Open Floating Terminal" })
vim.keymap.set("t", "<A-t>", "<C-\\><C-n>:ToggleTerm direction=tab<CR>",      { desc = "Open Full Terminal" })
