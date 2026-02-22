require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- Allow moving out of the terminal with Ctrl+hjkl
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Terminal left window navigation" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Terminal down window navigation" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Terminal up window navigation" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Terminal right window navigation" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map('i', '<C-i>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })

