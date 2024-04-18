-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Up>", "5k", { desc = "Up to 5 lines" })
vim.keymap.set("n", "<Down>", "5j", { desc = "Down to 5 lines" })
