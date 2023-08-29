return {
	lua = require("formatter.filetypes.lua").stylua,
	ruby = require("formatter.filetypes.ruby").standardrb,
	-- Use the special "*" filetype for defining formatter configurations on
	-- any filetype
	["*"] = {
		-- "formatter.filetypes.any" defines default configurations for any
		-- filetype
		require("formatter.filetypes.any").remove_trailing_whitespace,
	},
}
