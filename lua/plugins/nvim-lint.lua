local customData = require("config.variables").nvimLintTable

local function config()
	require("lint").linters_by_ft = customData.linters_by_ft
end

return {
	"mfussenegger/nvim-lint",
	config = config,
}
