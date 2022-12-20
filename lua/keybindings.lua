local opt = { noremap = true, silent = true }
local term_opt = { silent = true }

-- remap leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- local
local map = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- Press jk fast to exit insert mode 
map("i", "jk", "<ESC>", opt)
map("v", "jk", "<ESC>", opt)
