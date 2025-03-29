-- Loading Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "cp", "-r", vim.fn.stdpath("config") .. "/lazy", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Loading configurations
require("core")
require("plugins")
