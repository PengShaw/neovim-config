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

-- Slipt to a terminal windows
map("n", "st", ":sp | terminal<CR>", opt)

