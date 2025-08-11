-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local setmap = vim.keymap.set
local delmap = vim.keymap.del

-- delete default keymaps
delmap("n", "<c-/>")
delmap("n", "<leader>ft")
delmap("n", "<leader>fT")

-- customer keymaps
setmap("n", "+", "<c-a>", { desc = "number + 1" })
setmap("n", "-", "<c-x>", { desc = "number - 1" })
--

setmap("n", "<C-/>", function()
  return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)" or "<Plug>(comment_toggle_linewise_count)"
end, { expr = true })

-- ins mode move
setmap("i", "<C-b>", "<Left>")
setmap("i", "<C-f>", "<Right>")
setmap("i", "<C-e>", "<End>")
setmap("i", "<C-a>", "<Home>")
setmap("i", "<C-d>", "<Del>")
setmap("i", "<C-h>", "<BS>")
