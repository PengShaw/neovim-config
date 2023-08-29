-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
local customData = require("config.variables").nvimTreesitterTable

local function config()
	require("nvim-treesitter.configs").setup({
		-- :TSInstallInfo
		ensure_installed = customData.ensure_installed,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		incremental_selection = require("config.keymaps").nvimTreesitter.incremental_selection,
		indent = {
			enable = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = config,
}
