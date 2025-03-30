return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls" },
      automatic_installation = true
    })

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
  end
}

