local function config()
	local cmp = require("cmp")

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" }, -- For luasnip users.
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),
		mapping = require("config.keymaps").cmp(cmp),
	})

	-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		-- cmp source
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		-- snippet
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = config,
}
