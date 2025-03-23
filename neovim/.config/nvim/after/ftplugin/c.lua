local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4

local map = vim.keymap.set

map("", "<leader>r", ":w | :!make run<CR>", { desc = "Run make run" })
-- move to corresponding header
map("n", "gh", ":ClangdSwitchSourceHeader<cr>", { desc = "Clangd: Switch between source and header" })
