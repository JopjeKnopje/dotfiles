local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4

local map = vim.keymap.set

map("", "<leader>r", ":w | :!make run<CR>", { desc = "Run make run" })
