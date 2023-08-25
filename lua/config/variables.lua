local keys = {}

keys.colorschemeTable = {
  colorscheme = "tokyonight",
  url = "folke/tokyonight.nvim",
}

keys.nvimTreeTable = {
  filters_dotfiles = true,
  filters_custom = {},
}

keys.masonTable = {
  lsconfig_ensure_installed = {
    "lua_ls",
  },
  tool_ensure_installed = {
    -- should install luarocks first
    -- https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix
    "luacheck",
    -- should install cmake
    "luaformatter",
  },
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup {}
    end,
  }, 
}

return keys
