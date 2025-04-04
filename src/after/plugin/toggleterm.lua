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
  float_opts = { border = "curved" },
})

local Terminal  = require("toggleterm.terminal").Terminal

local horizontal_terminal = Terminal:new({
  direction = "horizontal",
  size = function(term)
    return math.max(20, math.floor(vim.o.lines * 0.3))
  end,
  hidden = true,
})

local vertical_terminal = Terminal:new({
  direction = "vertical",
  size = function(term)
    return math.max(40, math.floor(vim.o.columns * 0.3))
  end,
  hidden = true,
})

local float_terminal = Terminal:new({
  direction = "float",
  float_opts = { border = "curved" },
  hidden = true,
})

local tab_terminal = Terminal:new({
  direction = "tab",
  hidden = true,
})

function _G.toggle_horizontal_terminal()
  horizontal_terminal:toggle()
end

function _G.toggle_vertical_terminal()
  vertical_terminal:toggle()
end

function _G.toggle_float_terminal()
  float_terminal:toggle()
end

function _G.toggle_tab_terminal()
  tab_terminal:toggle()
end

vim.keymap.set("n", "<leader>tp", function() _G.toggle_float_terminal() end, { desc = "Open Floating Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-v>", function() _G.toggle_vertical_terminal() end, { desc = "Open Vertical Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-h>", function() _G.toggle_horizontal_terminal() end, { desc = "Open Horizontal Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-i>", function() _G.toggle_float_terminal() end, { desc = "Open Floating Terminal" })
vim.keymap.set({ "n", "v", "i" }, "<A-t>", function() _G.toggle_tab_terminal() end, { desc = "Open Full Terminal" })

vim.keymap.set("t", "<A-v>", "<C-\\><C-n>:lua toggle_vertical_terminal()<CR>", { desc = "Open Vertical Terminal" })
vim.keymap.set("t", "<A-h>", "<C-\\><C-n>:lua toggle_horizontal_terminal()<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set("t", "<A-i>", "<C-\\><C-n>:lua toggle_float_terminal()<CR>",   { desc = "Open Floating Terminal" })
vim.keymap.set("t", "<A-t>", "<C-\\><C-n>:lua toggle_tab_terminal()<CR>",      { desc = "Open Full Terminal" })
