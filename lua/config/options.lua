local opt = vim.opt

-- utf8
opt.encoding = "UTF-8"
opt.fileencoding = "utf-8"
--- 2 space = 1 tab
opt.tabstop = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftround = true
opt.shiftwidth = 2
opt.shiftwidth = 2
--- space instead tab
opt.expandtab = true
opt.expandtab = true

--- invisible chars display
opt.list = false
opt.listchars = "space:·,tab:··"

--- copy indent from current line when starting a new line
opt.autoindent = true
opt.autoindent = true
opt.smartindent = true
--- left / right moving cross line
opt.whichwrap = "<,>,[,]"
--- allow mouse
opt.mouse = "a"

--- ignore case except uppercase
opt.ignorecase = true
opt.smartcase = true
--- disable search hightlight
opt.hlsearch = false
--- search when typing
opt.incsearch = true

--- disallow to backup file
opt.backup = false
opt.writebackup = false
opt.swapfile = false
--- auto load when file edit outside
opt.autoread = true
opt.autoread = true
--- allow to hidden modified buffer
opt.hidden = true

--- smaller updatetime
opt.updatetime = 500
--- Time in milliseconds to wait for a mapped sequence to complete.
opt.timeoutlen = 500

--- split window right and below
opt.splitbelow = true
opt.splitright = true
--- style
opt.termguicolors = true
opt.termguicolors = true


-- no wrap
opt.wrap = false
-- minimal number of line to keep when the cursor move up/down/right/left, when wrap is off
opt.scrolloff = 8
opt.sidescrolloff = 8
-- show line number
opt.number = true
-- highlight current row 
opt.cursorline = true
-- left sign column
opt.signcolumn = "yes"
--- cmd height
opt.cmdheight = 1


--- cmp
opt.completeopt = "menu,menuone,noselect,noinsert"
---command-line completion is enhanced
opt.wildmenu = true


--- Dont' pass messages to |ins-completin menu|
opt.shortmess = vim.o.shortmess .. "c"
--- popup menu 10 items in max
opt.pumheight = 10
--- always display tabline
opt.showtabline = 2
--- use lualine plugin instead
opt.showmode = false
--- system clipboard
opt.clipboard = "unnamedplus"

