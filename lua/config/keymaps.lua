-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key
vim.g.mapleader = "`"
vim.g.maplocalleader = "`"

local opt = {
  noremap = true,
  silent = true,
}
local map = vim.api.nvim_set_keymap
local pluginKeys = {}


-- Slipt to a terminal windows
map("n", "<A-s>", ":sp | terminal<CR>", opt)
-- Slipt windows
map("n", "<leader>s", ":vsp<CR>", opt)
-- close current windows
map("n", "<leader>sc", "<C-w>c", opt)
-- close other windows
map("n", "<leader>so", "<C-w>o", opt)
-- ctrl + hjkl, jump into ohter windows
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)
-- change windows size
map("n", "<C-Left>", ":vertical resize -4<CR>", opt)
map("n", "<C-Right>", ":vertical resize +4<CR>", opt)
map("n", "<C-Down>", ":resize +4<CR>", opt)
map("n", "<C-Up>", ":resize -4<CR>", opt)
map("n", "<leader>s=", "<C-w>=", opt)


-- nvim-tree
map("n", "<A-t>", ":NvimTreeToggle<CR>", opt)

-- bufferline
-- alt + hj, change tab
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opt)
-- close tab
map("n", "<leader>bc", ":BufferLineCloseOther<CR>", opt)
