return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({})

    vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {desc = "Next Buffer"})
    vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {desc = "Previous Buffer"})
  end
}
