-- Loading Lazy.nvim
local lazypath = vim.fn.stdpath("config") .. "/lazy"
vim.opt.rtp:prepend(lazypath)

-- Loading configurations
require("core")
require("plugins")
