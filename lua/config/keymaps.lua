-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "dw", "vb_d")
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<C-m>", "<C-i>", opts)

keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

keymap.set("n", "<C-S-left>", "<C-w><")
keymap.set("n", "<C-S-right>", "<C-w>>")
keymap.set("n", "<C-S-up>", "<C-w>+")
keymap.set("n", "<C-S-down>", "<C-w>-")

keymap.set("n", "<c-p>", lazyterm, { desc = "Terminal (Root Dir)" })

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
