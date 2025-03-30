return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup {
      plugins = {
        spelling = true,
      },
      window = {
        border = "rounded",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 1, 2, 1, 2 },
        winblend = 10, -- transparency
      },
      layout = {
        height = { min = 4, max = 15 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "center",
      },
      ignore_missing = false,
      show_help = true,
      triggers = "auto",
    }

    wk.register({
      f = {
        name = "Find",
        f = "Find Files",
        g = "Live Grep",
        b = "Buffers",
        h = "Help Tags",
      },
      t = {
        name = "Terminal",
        h = "Horizontal Terminal",
        v = "Vertical Terminal",
        f = "Full Terminal",
        p = "Popup Terminal",
      },
      e = "File Explorer",
      w = "Save File",
      q = "Quit",
    }, { prefix = "<leader>" })
  end
}
