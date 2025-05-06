local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Unmap leader
map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- Tabs & Splits --
map("n", "<leader>t", "<CMD>tabnew<CR>:e ", { noremap = true })
map("n", "<leader>T", "<CMD>tabclose<CR>", opts)
map("n", "<leader>o", "<CMD>vsplit<CR>", opts)
map("n", "<leader>p", "<CMD>split<CR>", opts)

map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Neotree --
map("n", "<leader>e", "<CMD>Neotree toggle<CR>", opts)
map("n", "<leader>r", "<CMD>Neotree focus<CR>", opts)

-- Utility --
map("i", "jk", "<ESC>", opts)

