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

-- lsp
--map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
--map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
-- go xx
--map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
--map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
--map("n", "gdc", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
--map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
--map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
-- diagnostic
--map("n", "gf", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
--map("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
--map("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
--map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
-- more
--map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
--map("n", "<leader>sh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
--map('n', '<leader>awf', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
--map('n', '<leader>rwf', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
--map('n', '<leader>lwf', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
--map('n', '<leader>td', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)

-- formatter
map("n", "<leader>f", ":Format<CR>", opt)
map("n", "<leader>fw", ":FormatWrite<CR>", opt)

-- Telescope
-- find files
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- global grep
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
pluginKeys.telescope = {
  i = {
    -- up / down move in preview windows
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}


-- cmp
pluginKeys.cmp = function(cmp)
  return {
    -- show cmp
    ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    -- cancel cmp
    ["<A-,>"] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close()
    }),
    -- previous
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    -- next
    ["<C-j>"] = cmp.mapping.select_next_item(),
    -- confirt
    ["<CR>"] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- scroll
    ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
  }
end

-- nvim-treesitter
pluginKeys.nvimTreesitter = {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "<TAB>",
    },
  }
}

return pluginKeys
