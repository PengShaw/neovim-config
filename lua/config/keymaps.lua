-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key
vim.g.mapleader = ""
vim.g.maplocalleader = ""

local opt = {
  noremap = true,
  silent = true,
}
local map = vim.api.nvim_set_keymap
local pluginKeys = {}

-- Slipt windows
map("n", "<A-s>", ":vsp<CR>", opt)
-- Slipt to a terminal windows
map("n", "st", ":sp | terminal<CR>", opt)
-- close current windows
map("n", "sc", "<C-w>c", opt)
-- close other windows
map("n", "so", "<C-w>o", opt)
-- alt + hjkl, jump into ohter windows
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- change windows size
map("n", "<C-Left>", ":vertical resize -4<CR>", opt)
map("n", "<C-Right>", ":vertical resize +4<CR>", opt)
map("n", "<C-Down>", ":resize +4<CR>", opt)
map("n", "<C-Up>", ":resize -4<CR>", opt)
map("n", "s=", "<C-w>=", opt)


-- nvim-tree
map("n", "<A-t>", ":NvimTreeToggle<CR>", opt)
