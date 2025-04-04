require("toggleterm").setup({
  size = function(term)
    if term.direction == "horizontal" then
      return math.max(20, math.floor(vim.o.lines * 0.3))
    elseif term.direction == "vertical" then
      return math.max(40, math.floor(vim.o.columns * 0.3))
    end
  end,
  open_mapping = [[<c-\>]],
  direction = "horizontal",
  float_opts = { border = "curved" }
})

vim.keymap.set("n", "<leader>tp", "<cmd>ToggleTerm direction=float<CR>", {desc = "Open Floating Terminal"})
vim.keymap.set({ "n", "v", "i" }, "<A-v>", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-h>", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-i>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-t>", "<cmd>ToggleTerm direction=tab<CR>", { desc = "Open Full Terminal" })

vim.keymap.set("t", "<A-v>", "<C-\\><C-n><cmd>ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" })
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set("t", "<A-i>", "<C-\\><C-n><cmd>ToggleTerm direction=float<CR>",   { desc = "Open Floating Terminal" })
vim.keymap.set("t", "<A-t>", "<C-\\><C-n><cmd>ToggleTerm direction=tab<CR>",      { desc = "Open Full Terminal" })
