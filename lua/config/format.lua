return {
	lua = require("formatter.filetypes.lua").stylua,
	-- Use the special "*" filetype for defining formatter configurations on
	-- any filetype
	["*"] = {
		-- "formatter.filetypes.any" defines default configurations for any
		-- filetype
		require("formatter.filetypes.any").remove_trailing_whitespace,
	},
}
