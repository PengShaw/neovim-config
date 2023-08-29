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
    -- lua
    -- should install luarocks first
    -- should install cmake
    -- https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix
    "luacheck",
    "stylua",
  },
  -- See `:h mason-lspconfig.setup_handlers()`
  handlers = {
    ["lua_ls"] = function()
      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
           },
          },
        },
      })
    end,
  },
}

keys.nvimLintTable = {
  linters_by_ft = {
    lua = { "luacheck" },
  },
}

keys.nvimTreesitterTable = {
  ensure_installed = { "lua" },
}

return keys
