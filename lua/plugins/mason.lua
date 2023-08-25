local customData = require("config.variables").masonTable

function config()
  require("mason").setup()
  require("mason-lspconfig").setup {
    ensure_installed = customData.lsconfig_ensure_installed,
    handlers = customData.handlers,
  }
  require("mason-tool-installer").setup {
    ensure_installed = customData.tool_ensure_installed,
  }
end

return {
  "williamboman/mason.nvim",
  dependencies = { 
    "williamboman/mason-lspconfig",
    "neovim/nvim-lspconfig",
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = config,
}
