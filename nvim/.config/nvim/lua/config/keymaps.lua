-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

local function toggle_cursorline()
  vim.wo.cursorline = not vim.wo.cursorline
end

-- save all
map({ "i", "x", "n", "s" }, "<C-S>", "<cmd>wa<cr><esc>", { desc = "Save File" })
map(
  { "n", "i", "s", "x" },
  "<leader>uu",
  toggle_cursorline,
  { noremap = true, silent = true, desc = "Enable cursor line" }
)
