local customData = require("config.variables").nvimTreeTable

local function config()
  require("nvim-tree").setup {
    filters = {
      dotfiles = customData.filters_dotfiles,
      custom = customData.filters_custom,
    },
  }
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = config,
}
