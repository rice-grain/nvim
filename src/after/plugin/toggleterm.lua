require("toggleterm").setup({
  size = 20,
  open_mapping = [[<c-\>]],
  direction = 'horizontal',
  float_opts = { border = 'curved' }
})

vim.keymap.set("n", "<leader>tp", ":ToggleTerm direction=float<CR>", {desc = "Open Floating Terminal"})
