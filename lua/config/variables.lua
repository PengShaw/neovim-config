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
		"solargraph", -- ruby
	},
	tool_ensure_installed = {
		-- lua
		-- should install luarocks first
		-- should install cmake
		-- https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix
		"luacheck",
		"stylua",
		-- ruby
		"standardrb",
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
		["solargraph"] = function()
			require("lspconfig").solargraph.setup({})
		end,
	},
}

keys.nvimLintTable = {
	linters_by_ft = {
		lua = { "luacheck" },
		ruby = { "standardrb" },
	},
}

keys.nvimTreesitterTable = {
	ensure_installed = { "lua", "ruby" },
}

return keys
